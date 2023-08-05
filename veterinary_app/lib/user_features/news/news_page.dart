import 'package:flutter/material.dart';
import '../../common/widgets/custom_app_bar.dart';
import '../../common/widgets/custom_heading.dart';
import '../../common/widgets/nav_bar.dart';
import '../../utils/global_variables.dart';
import 'news_widget/news_card.dart';

class NewsPage extends StatefulWidget {
  static const routeName = '/news-page';
  const NewsPage({super.key});

  @override
  State<NewsPage> createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {

  List<News> news = [
    News(headline: "Death of the minister of health due to the pandemic of Covid 19", headlineDate: DateTime.now()),
    News(headline: "A cure for the rabies of Covid 19", headlineDate: DateTime(2017)),
    News(headline: "High prices for veterinary equipments", headlineDate: DateTime(2018)),
    News(headline: "Artifical Intelligence in veterinary medicine", headlineDate: DateTime(2021)),
    News(headline: "Upcoming veterinary World Conference", headlineDate: DateTime.now())
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavBarDrawer(),
      bottomNavigationBar:Container(
        height: 40,
        width: double.infinity,
        
        ),
      appBar: CustomAppBar(title: "VetMed", color: Colors.white,),
      body: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
        child: SingleChildScrollView(
            physics: const NeverScrollableScrollPhysics(),
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                const Center(
                    child: CustomHeading(
                  text: "News",
                  style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.w700,
                      color: loginColor),
                )),
                const SizedBox(
                  height: 20,
                ),
                NewsCard(currentNews: news)
              ],
            )),
      ),
    );
  }
}
