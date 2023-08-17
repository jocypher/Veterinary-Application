import 'package:flutter/material.dart';

class Contact {
  final String title;
  final String lecturerName;
  final String lecturerOffice;
  final DateTime officeHours;
  final String email;

  Contact(
      {required this.lecturerName,
      required this.lecturerOffice,
      required this.officeHours,
      required this.email,
      required this.title});
}

class ContactWidget extends StatelessWidget {
  final String title;
   final String lecturerName;
  final String lecturerOffice;
  final DateTime officeHours;
  final String email;

  const ContactWidget({super.key, required this.lecturerName, required this.email, required this.lecturerOffice, required this.officeHours, required this.title});

  @override
  Widget build(BuildContext context) {
   return Container(
            padding: const EdgeInsets.only(top: 10, left: 10,bottom: 10),
            margin: const EdgeInsets.only(
                top: 10, bottom: 10, left: 5, right: 5),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.grey[200]),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(title+lecturerName,style: const TextStyle(fontWeight: FontWeight.w600,fontSize: 16),),
                  RichText(text: TextSpan(
                    text: "location: ",
                    style: const TextStyle(color: Colors.black),
                    children: [
                      TextSpan(text: lecturerOffice,style: const TextStyle(color: Colors.black))
                    ])),
                  Text("Office Hours: $officeHours"),
                  RichText(text: TextSpan(
                    text: "email: ",
                    style: const TextStyle(color: Colors.black),
                    children: [
                      TextSpan(text: email,style: const TextStyle(color: Color.fromRGBO(33, 94, 190, 1),decoration: TextDecoration.underline))
                    ]))
                ],
              ),
            ),
        );
  }
}
