import 'package:flutter/material.dart';
import '../../common/widgets/custom_app_bar.dart';
import '../../common/widgets/custom_heading.dart';
import '../../common/widgets/nav_bar.dart';
import '../../utils/global_variables.dart';
import 'contacts_widget/contact_widget.dart';



class ContactPage extends StatefulWidget {
  static const String routeName = '/contact-page';
  const ContactPage({super.key});

  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {

  List<Contact> contacts = [
    Contact(
        lecturerName: "Mr.Jo",
        lecturerOffice: "Economics Department",
        officeHours: DateTime.now().copyWith(day: 5 ,hour: 6),
        email: "jo@gmail.com"),
    Contact(
        lecturerName: "Dr.Eric Akobeng",
        lecturerOffice: "Chemistry Department",
        officeHours:DateTime.now().copyWith(day: 3, hour: 8),
        email: "eakobeng@gmail.com"),
        Contact(
        lecturerName: "Dr.James Gordon",
        lecturerOffice: "Pyschology department",
        officeHours: DateTime.now().copyWith(day: 1, hour: 4),
        email: "jgorden@gmail.com"),
        Contact(
        lecturerName: "Dr.Chris Evans",
        lecturerOffice: "Soil Department",
        officeHours: DateTime.now().copyWith(day: 2, hour: 8),
        email: "cevans@gmail.com"),
        Contact(
        lecturerName: "Mr. Mark Attah mensah",
        lecturerOffice: "mamensah@gmail.com",
        officeHours: DateTime.now().copyWith(day: 5, hour: 9),
        email: "nemo@gmail.com"),
        Contact(
        lecturerName: "Dr. Dennis Light",
        lecturerOffice: "Veterinary Department",
        officeHours: DateTime.now().copyWith(day: 3, hour: 10),
        email: "nemo@gmail.com"),
        Contact(
        lecturerName: "Mr. Ali Ababua",
        lecturerOffice: "Veterinary Department",
        officeHours: DateTime.now().copyWith(day: 2, hour: 8),
        email: "aababu@gmail.com"),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
     bottomNavigationBar:const SizedBox(
        height: 40,
        width: double.infinity,
        
        ),
      drawer: const NavBarDrawer(),
      appBar: CustomAppBar(title: "VetMed",color: Colors.white,),
      body: Padding(
        padding: const EdgeInsets.only(left: 10.0, right: 10.0, top: 10),
        child: SingleChildScrollView(
          child: Column(children: [
            const Center(
                child: CustomHeading(
              text: "Contacts",
              style: TextStyle(
                  fontSize: 40, fontWeight: FontWeight.w700, color: loginColor),
            )),
            SizedBox(height: 30,),
            ContactWidget(contacts: contacts)
          ]),
        ),
      ),
    );
  }
}
