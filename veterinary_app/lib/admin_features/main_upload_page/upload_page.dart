import 'package:flutter/material.dart';
import 'package:veterinary_app/admin_features/upload_contact/upload_contact_page.dart';
import 'package:veterinary_app/admin_features/upload_events/upload_events.dart';
import 'package:veterinary_app/admin_features/upload_news/upload_news.dart';
import '../../common/widgets/custom_app_bar.dart';
import '../../common/widgets/custom_heading.dart';
import '../../utils/global_variables.dart';
import '../upload_books/upload_books_page.dart';
import '../upload_pastQ/upload_pastquestion.dart';
import '../upload_slide/upload_slide_page.dart';

class UploadPage extends StatefulWidget {
  static const routeName = '/uploadPage';
  const UploadPage({super.key});

  @override
  State<UploadPage> createState() => _UploadPageState();
}

class _UploadPageState extends State<UploadPage> {

  List<Widget> pages = [
    const UploadSlidePage(),
    const UploadPastQuestion(),
    const uploadBookPage(),
    const uploadNewsPage(),
    const uploadEventPage(),
    const uploadContactPage(),
  ];
  int _page = 0;
  void updatePage(int page) {
    setState(() {
      _page = page;
    });
  }
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const CustomAppBar(title: "VetMed", color: Colors.white),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Column(
          children: [
            const Center(
                child: CustomHeading(
              text: "Upload",
              style: TextStyle(
                  fontSize: 40, fontWeight: FontWeight.w700, color: loginColor),
            )),
            const SizedBox(
              height: 30,
            ),
            Material(
                elevation: 5,
                child: Container(
                  padding: const EdgeInsets.all(5),
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children:  [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: _page == 0 ? loginColor : primaryColor
                          ),
                          child: TextButton(onPressed: () => updatePage(0), child: Text("Slides", style: TextStyle(color: _page == 0 ? primaryColor : Colors.black)))),
                  
                          Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: _page == 1 ? loginColor : primaryColor
                          ),
                          child: TextButton(onPressed: () => updatePage(1), child: Text("PastQuestions", style: TextStyle(color: _page == 1 ? primaryColor : Colors.black)))),
                  
                           Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: _page == 2 ? loginColor : primaryColor
                          ),
                          child: TextButton(onPressed: () => updatePage(2), child: Text("Books", style: TextStyle(color: _page == 2 ? primaryColor : Colors.black)))),
                         Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: _page == 3 ? loginColor : primaryColor
                          ),
                          child: TextButton(onPressed: () => updatePage(3), child: Text("News", style: TextStyle(color: _page == 3 ? primaryColor : Colors.black)))),
                  
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: _page == 4 ? loginColor : primaryColor
                          ),
                          child: TextButton(onPressed: () => updatePage(4), child: Text("Events", style: TextStyle(color: _page == 4 ? primaryColor : Colors.black)))),
                           Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: _page == 5 ? loginColor : primaryColor
                          ),
                          child: TextButton(onPressed: () => updatePage(5), child: Text("Contacts", style: TextStyle(color: _page == 5 ? primaryColor : Colors.black)))),
                      ],
                    ),
                  ),
                )),
                const SizedBox(height: 20,),
            Container(
              child: pages[_page],
            )
          ],
        ),
      ),
    );
  }
}
