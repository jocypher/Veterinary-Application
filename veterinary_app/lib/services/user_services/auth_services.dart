import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../provider/student.dart';
import '../../user_features/home/home_page.dart';
import '../../utils/global_variables.dart';
import '../../utils/snackBar.dart';

class UserAuthService {
  SharedPreferences? preferences;
  String? token;

  Future<void> signIn({
    required BuildContext context,
    required String pin,
    required String id,
  }) async {
    Dio dio = Dio();
    dio.options.receiveTimeout = const Duration(seconds: 30);
    dio.options.connectTimeout = const Duration(seconds: 30);

    try {
      preferences = await SharedPreferences.getInstance();
      Response response = await dio.post('$uri/auth',
          data: jsonEncode({'id': id, 'pin': pin}),
          options: Options(
              headers: {'Content-Type': 'application/json; charset=UTF-8'}));

      if (response.statusCode == 200) {
        var responseData = response.data as Map<String, dynamic>;
        String jsonData = jsonEncode(responseData);
        Provider.of<StudentProvider>(context, listen: false).setStudent(jsonData);

        token = responseData['accessToken'];
        Navigator.pushNamedAndRemoveUntil(
            context, HomePage.routeName, (route) => false);
      } else {
        SnackBarGlobal.showSnackBar(context, "network error");
      }
    } catch (err) {
      SnackBarGlobal.showSnackBar(context, err.toString());
    }
  }

  getRefreshToken(BuildContext context) async {
    Dio dio = Dio();
    dio.options.receiveTimeout = const Duration(hours: 10);
    dio.options.connectTimeout = const Duration(minutes: 30);

    try {
      preferences = await SharedPreferences.getInstance();
      token = preferences!.getString('accessToken');

      Response response = await dio.get('$uri/refresh',
          options: Options(headers: {
            'Content-Type': 'application/json; charset=UTF-8',
            'accessToken': 'Bearer $token'
          }));

      if (response.statusCode == 200) {
        token = response.data['refreshToken'];
        if (token == null) {
          preferences!.setString('accessToken', token!);
          print("Congratulations, refresh token gained");
        }
      } else {
        print("No user found");
        SnackBarGlobal.showSnackBar(context, "No user found");
      }
    } catch (err) {
      SnackBarGlobal.showSnackBar(context, err.toString());
    }
  }
}