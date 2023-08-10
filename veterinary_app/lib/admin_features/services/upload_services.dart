// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:veterinary_app/admin_features/models/booksModel.dart';
import 'package:veterinary_app/admin_features/models/slideModel.dart';
import 'package:veterinary_app/provider/student.dart';
import 'package:http/http.dart' as http;
import 'package:veterinary_app/utils/snackBar.dart';

import '../../utils/error_handling.dart';
import '../../utils/global_variables.dart';

class UploadInformation{

  // ignore: non_constant_identifier_names
  void UploadSlides({
    required BuildContext context,
    required String title, 
    required String fileName
  }) async{
      final studentprovider = Provider.of<StudentProvider>(context, listen: false);
      try{
        UploadSlidesInfo uploadSlidesInfo = UploadSlidesInfo(
          title: title, 
          fileName: fileName);
        http.Response response =await http.post(Uri.parse('$uri/'), headers: {
          'Content-Type': 'application/json; charset=UTF-8',
          'accessToken': studentprovider.student.accessToken,
        },
        body: uploadSlidesInfo.toJson());
        httpErrorHandle(response: response, context: context, success: ()async{
          SnackBarGlobal.showSnackBar(context, "Slides Added Succesfully");
          Navigator.pop(context);
        });
      }catch(err){
          SnackBarGlobal.showSnackBar(context, err.toString());
      }
  }

  // ignore: non_constant_identifier_names
  void UploadBooks({
    required BuildContext context,
    required String title, 
    required String year,
    required String pages,
    required String fileName
  }) async{
      final studentprovider = Provider.of<StudentProvider>(context, listen: false);
      try{
       UploadBookInfo uploadBookInfo = UploadBookInfo(title: title, fileName: fileName, pages: pages, year: year);
        http.Response response =await http.post(Uri.parse('$uri/books'), headers: {
          'Content-Type': 'application/json; charset=UTF-8',
          'accessToken': studentprovider.student.accessToken,
        },
        body: uploadBookInfo.toJson());
        httpErrorHandle(response: response, context: context, success: ()async{
          SnackBarGlobal.showSnackBar(context, "Slides Added Succesfully");
          Navigator.pop(context);
        });
      }catch(err){
          SnackBarGlobal.showSnackBar(context, err.toString());
      }
  }
}