import 'package:flutter/material.dart';
import '../../../utils/global_variables.dart';
import '../../books/books_page.dart';
import '../../news/news_page.dart';
import '../../past_questions/past_questions_page.dart';
import '../../slides/slides_page.dart';

class CustomResource extends StatefulWidget {
  const CustomResource({super.key});

  @override
  State<CustomResource> createState() => _CustomResourceState();
}

class _CustomResourceState extends State<CustomResource> {
  

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Container(
        height: size * 0.19,
        width: double.infinity,
        decoration: BoxDecoration(
            color: Colors.grey[300], borderRadius: BorderRadius.circular(15)),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamedAndRemoveUntil(
                          context, SlidesPage.routeName, (route) => false);
                    },
                    child: Container(
                      margin: const EdgeInsets.only(right: 25),
                      width: size * 0.16,
                      height: size * 0.13,
                      decoration: BoxDecoration(
                          color: primaryColor,
                          borderRadius: BorderRadius.circular(20)),
                      child: Column(
                        children: [
                          Expanded(child: Image.asset("assets/slides.jpeg")),
                          const Text(
                            "Slides",
                            style: TextStyle(fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamedAndRemoveUntil(
                          context, NewsPage.routeName, (route) => false);
                    },
                    child: Container(
                      margin: const EdgeInsets.only(right: 25),
                      width: size * 0.16,
                      height: size * 0.13,
                      decoration: BoxDecoration(
                          color:primaryColor,
                          borderRadius: BorderRadius.circular(20)),
                      child: Column(
                        children: [
                          Expanded(child: Image.asset("assets/articles.jpeg")),
                          const Text("News", style: TextStyle(fontSize: 16)),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamedAndRemoveUntil(
                          context, BooksPage.routeName, (route) => false);
                    },
                    child: Container(
                      margin: const EdgeInsets.only(right: 25),
                      width: size * 0.16,
                      height: size * 0.13,
                      decoration: BoxDecoration(
                          color: primaryColor,
                          borderRadius: BorderRadius.circular(20)),
                      child: Column(
                        children: [
                          Expanded(
                              child: Image.asset(
                                  "assets/WhatsApp Image 2023-07-08 at 4.16.54 PM.jpeg")),
                          const Text("Books", style: TextStyle(fontSize: 16)),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamedAndRemoveUntil(context,
                          PastQuestionsPage.routeName, (route) => false);
                    },
                    child: Container(
                      margin: const EdgeInsets.only(right: 25),
                      width: size * 0.16,
                      height: size * 0.13,
                      decoration: BoxDecoration(
                          color: primaryColor,
                          borderRadius: BorderRadius.circular(20)),
                      child: Column(
                        children: [
                          Expanded(
                              child: Image.asset(
                                  "assets/WhatsApp Image 2023-07-08 at 4.16.58 PM.jpeg")),
                          const Text("Past Questions",
                              style: TextStyle(fontSize: 16)),
                        ],
                      ),
                    ),
                  ),
                ]),
          ),
        ),
      ),
    );
  }
}
