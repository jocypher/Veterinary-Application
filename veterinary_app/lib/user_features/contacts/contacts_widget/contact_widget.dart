import 'package:flutter/material.dart';

class Contact {
  final String lecturerName;
  final String lecturerOffice;
  final DateTime officeHours;
  final String email;

  Contact(
      {required this.lecturerName,
      required this.lecturerOffice,
      required this.officeHours,
      required this.email});
}

class ContactWidget extends StatelessWidget {
  final List<Contact> contacts;
  const ContactWidget({super.key, required this.contacts});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        itemCount: contacts.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          childAspectRatio: 1/.8,
            crossAxisCount: 2),
        itemBuilder: (context, index) {
          final contact = contacts[index];
          return Container(
            padding: const EdgeInsets.only(top: 10, left: 10,bottom: 10),
            margin: const EdgeInsets.only(
                top: 10, bottom: 10, left: 10, right: 10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.grey[200]),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(contact.lecturerName,style: const TextStyle(fontWeight: FontWeight.w600,fontSize: 16),),
                RichText(text: TextSpan(
                  text: "location: ",
                  style: const TextStyle(color: Colors.black),
                  children: [
                    TextSpan(text: contact.lecturerOffice,style: const TextStyle(color: Colors.black))
                  ])),
                Text("Office Hours: "+ contact.officeHours.toIso8601String()),
                RichText(text: TextSpan(
                  text: "email: ",
                  style: const TextStyle(color: Colors.black),
                  children: [
                    TextSpan(text: contact.email,style: const TextStyle(color: Color.fromRGBO(33, 94, 190, 1),decoration: TextDecoration.underline))
                  ]))
              ],
            ),
          );
        });
  }
}
