import 'package:flutter/material.dart';
import 'package:veterinary_app/model/contacts_api.dart';
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
  List<Contact> contactCollection = List<Contact>.empty(growable: true);
  bool _isLoading = true;

@override
  void initState() {
    super.initState();
    getContacts();
  }

void getContacts() async{
  ContactApi contactApi = ContactApi();
  await contactApi.getContacts();
  contactCollection  = contactApi.contacts;
  print("Number of books fetched: ${contactApi.contacts.length}");
setState(() {
  _isLoading = false;
});
}

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
            const SizedBox(height: 30,),
            _isLoading? const CircularProgressIndicator(color: loginColor,): GridView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              itemCount: contactCollection.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, childAspectRatio: 1/.8),
             itemBuilder: (context, index){
              return ContactWidget(
                lecturerName: contactCollection[index].lecturerName, 
              email: contactCollection[index].email, 
              lecturerOffice: contactCollection[index].lecturerOffice, 
              officeHours: contactCollection[index].officeHours, 
              title: contactCollection[index].title);
             })
          ]),
        ),
      ),
    );
  }
}
