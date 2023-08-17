import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:veterinary_app/user_features/contacts/contacts_widget/contact_widget.dart';
import 'package:http/http.dart' as http;
import 'package:veterinary_app/utils/snackBar.dart';

import '../utils/global_variables.dart';
class ContactApi{


  List<Contact> contacts = [];

  Future<void> getContacts() async{
    try{
      http.Response response = await http.get(Uri.parse('$uri/contacts'));
      var jsonResponse = jsonDecode(response.body);
      print(jsonResponse);
      if(response.statusCode == 200){
        jsonResponse.forEach((element){
            Contact contactModel =Contact(
              title: element['title'],
              lecturerName: element['name'], 
              lecturerOffice: element['location'], 
              officeHours: DateTime.parse(element['officeHours']),
               email: element['email']);
            contacts.add(contactModel);
        });
      }
    }catch(err){
        print(err.toString());
    }
  }
}