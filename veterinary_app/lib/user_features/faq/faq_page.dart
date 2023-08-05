import 'package:flutter/material.dart';
import 'package:veterinary_app/user_features/faq/faq_widgets/faq_dynamic.dart';
import '../../common/widgets/custom_app_bar.dart';
import '../../common/widgets/custom_heading.dart';
import '../../common/widgets/nav_bar.dart';
import '../../utils/global_variables.dart';


class FAQPage extends StatefulWidget {
  static const String routeName = '/faq-page';
  const FAQPage({super.key});

  @override
  State<FAQPage> createState() => _FAQPageState();
}

class _FAQPageState extends State<FAQPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      drawer: const NavBarDrawer(),
      appBar: CustomAppBar(title: "VetMed",color:Colors.white,),
      body: Padding(
        padding: const EdgeInsets.only( top: 10),
        child: Column(children: [
          const Center(
                  child: CustomHeading(
                text: "FAQs",
                style: TextStyle(
                    fontSize: 40, fontWeight: FontWeight.w700, color: loginColor),
              )),
              const SizedBox(height: 10,),
          const Text("Frequently Asked Questions"),
          const SizedBox(height: 5),
          const Text("Here are Some Frequently Asked Questions about VetMed"),
          const SizedBox(height: 55),
          Container(
            height: 450,
            padding: const EdgeInsets.symmetric(horizontal: 50),
            width: double.infinity,
            decoration: BoxDecoration(color: Colors.grey[200]),
            child: Padding(
              padding: const EdgeInsets.only(top: 20),
              child: DynamicListWidget(),
            ),
          ),
              Container(
                  height: 200,
                  width: double.infinity,
                  decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/3faq.jpg", ), fit: BoxFit.cover, scale: 1)),
                 )
        ],)),
    );
  }
}
