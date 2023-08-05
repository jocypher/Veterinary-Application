import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:veterinary_app/utils/snackBar.dart';

void httpErrorHandle(
    {required http.Response response,
    required BuildContext context,
    required VoidCallback success}) {
  switch (response.statusCode) {
    case 200:
      success();
      break;
    case 400:
      SnackBarGlobal.showSnackBar(context, jsonDecode(response.body)['msg']);
      break;
    case 500:
      SnackBarGlobal.showSnackBar(context, jsonDecode(response.body)['msg']);
      break;
    default:
      SnackBarGlobal.showSnackBar(context, response.body);
  }
}
