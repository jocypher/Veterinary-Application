

// ignore_for_file: use_build_context_synchronously

import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:veterinary_app/provider/student.dart';
import 'package:veterinary_app/user_features/home/home_page.dart';
import 'package:veterinary_app/utils/error_handling.dart';
import 'package:veterinary_app/utils/global_variables.dart';
import 'package:veterinary_app/utils/snackBar.dart';
import 'package:http/http.dart' as http;
class UserAuthService{


  Future<void> signInUser({
    required BuildContext context,
    required id,
    required pin
  })  async{

    http.Response response = await http.post(Uri.parse("$uri/auth"), 
    body: jsonEncode
    ({
      'id': id,
      'pin': pin
    }),

    headers: <String, String>{'Content-Type': 'application/json; charset=UTF-8',},);

    final responseData = jsonDecode(response.body);
    try
    {
      if(response.statusCode == 200)
      {
        
        httpErrorHandle(response: response, 
        context: context, 
        success: () async{
             SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
            sharedPreferences.setString('accessToken', responseData['accessToken']);
            // using the provider to set the student to the specific user
            Provider.of<StudentProvider>(context, listen: false).setStudent(response.body);
          // navigate to the home page if login is successful
            Navigator.pushNamedAndRemoveUntil(context, HomePage.routeName, (route) => false);
        });
        if(kDebugMode){
          print(responseData);
        }
      }

      else{
        if(kDebugMode){
          print(response.statusCode.toString());
        }    
      }

    }
    catch(err){
      SnackBarGlobal.showSnackBar(context, err.toString());
    }
  }


}