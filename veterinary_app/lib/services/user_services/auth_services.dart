

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
SharedPreferences? sharedPreferences;
var accessToken;

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
            sharedPreferences = await SharedPreferences.getInstance();
            if(!isAccessTokenExpired(accessToken)){
              sharedPreferences!.setString('accessToken', responseData['accessToken']);
            // using the provider to set the student to the specific user
            Provider.of<StudentProvider>(context, listen: false).setStudent(response.body);
          // navigate to the home page if login is successful
            Navigator.pushNamedAndRemoveUntil(context, HomePage.routeName, (route) => false);
            }else{
              await verifyRefreshToken(context: context);
            }
           
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


 Future<void> verifyRefreshToken({required BuildContext context}) async {
     accessToken = sharedPreferences!.get('accessToken');
    http.Response refreshResponse = await http.get(Uri.parse('$uri/refresh'), 
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
      'Authorization': 'Bearer $accessToken'
    });
    print(refreshResponse.body);
  try{
    httpErrorHandle(
      response: refreshResponse, 
      context: context, 
      success: ()async{
        sharedPreferences = await SharedPreferences.getInstance();
        accessToken = sharedPreferences!.setString('accessToken', jsonDecode(refreshResponse.body)['refreshToken']);
         Provider.of<StudentProvider>(context, listen: false).setStudent(refreshResponse.body);
    });

  }
  catch(err){
    SnackBarGlobal.showSnackBar(context, err.toString());
  }
 }


bool isAccessTokenExpired(accessToken) {
  try {
    final parts = accessToken.split('.');
    if (parts.length != 3) {
      // Invalid token format
      return true;
    }
    
    final payload = jsonDecode(utf8.decode(base64Url.decode(base64Url.normalize(parts[1])))) as Map<String, dynamic>;
    if (payload.containsKey('exp')) {
      final expirationTimestamp = payload['exp'] as int;
      final currentTimeInSeconds = DateTime.now().millisecondsSinceEpoch ~/ 1000;
      return currentTimeInSeconds >= expirationTimestamp;
    }
    
    return true; // If 'exp' claim is not present, consider the token as expired
  } catch (e) {
    return true; // Error while decoding or parsing token
  }
}

Future<void> logOut() async{
  if(accessToken != null){
    sharedPreferences!.remove('accessToken');
  }else{
    //do nothing
  }
  

}
}