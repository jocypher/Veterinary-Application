import 'package:flutter/material.dart';
import '../../common/widgets/custom_app_bar.dart';
import '../../common/widgets/custom_heading.dart';
import '../../common/widgets/custom_search_box.dart';
import '../../common/widgets/nav_bar.dart';
import '../../services/user_services/auth_services.dart';
import '../../utils/global_variables.dart';
import 'home_widget/custom_recently_viewed.dart';
import 'home_widget/custom_resource.dart';


class HomePage extends StatefulWidget {
  static const routeName = '/home-page';
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  UserAuthService userAuthService = UserAuthService();
  final TextEditingController searchTextEditingController =
      TextEditingController();



  @override
  void dispose() {
    super.dispose();
    searchTextEditingController.dispose();
  }

  List<RecentlyViewedItems> recentlyViewed = [
    RecentlyViewedItems("Vaccine for rabbies found", "News", 2017),
    RecentlyViewedItems("A cure for the dog sickness has been found", "News", 2019),
    RecentlyViewedItems("School of veterinary culture day", "Slides", 2019),
    RecentlyViewedItems("Teaching begins", "events", 2018),
    RecentlyViewedItems("Course registration deadline", "events", 2020),
    RecentlyViewedItems("Course Evaluation", "events", 2022),
  ];
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavBarDrawer(),
      backgroundColor: primaryColor,
      appBar: const CustomAppBar(
        color: Colors.white,
        title: "VetMed",
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 10.0),
        child: Column(children: [
          const Center(
              child: CustomHeading(
            text: "Welcome",
            style: TextStyle(
                fontSize: 40, fontWeight: FontWeight.w700, color: loginColor),
          )),
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Row(
              children: [
                const Text(
                  "Resources",
                  style: TextStyle(fontSize: 18),
                ),
                const SizedBox(
                  width: 20,
                ),
                Expanded(
                    child: SearchBox(
                  textEditingController: searchTextEditingController,
                  searchIcon: const Icon(Icons.search),
                  searchText: "Search...",
                  hintStyle: TextStyle(color: Colors.grey[500], fontSize: 14),
                )),
              ],
            ),
          ),
          const SizedBox(height: 35),
          const CustomResource(),
          const SizedBox(
            height: 35,
          ),
          RecentlyViewed(recentlyViewedItems: recentlyViewed)
        ]),
      ),
    );
  }
}
