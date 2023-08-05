import 'package:flutter/material.dart';
import 'package:veterinary_app/user_features/slides/slides_widget/slide_page_widget.dart';
import 'package:veterinary_app/user_features/slides/slides_widget/slide_search_box.dart';
import '../../common/widgets/custom_app_bar.dart';
import '../../common/widgets/custom_heading.dart';
import '../../common/widgets/nav_bar.dart';
import '../../utils/global_variables.dart';


class SlidesPage extends StatefulWidget {
  static const routeName = '/slides-page';
  const SlidesPage({super.key});

  @override
  State<SlidesPage> createState() => _SlidesPageState();
}

class _SlidesPageState extends State<SlidesPage> {
  final TextEditingController searchSlideController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    searchSlideController.dispose();
  }

  List<Slides> slideItem = [
    Slides("Vertinarian Introduction"),
    Slides("Nature of Work"),
    Slides("Working conditions"),
    Slides("Training, Qualifications and Advancement"),
    Slides("Job Outlook/ Employment"),
    Slides("Electrocardiography of the Dog and Cat, Diagnosis of Arrhythmias"),
    Slides("Miller and Evans'\ Anatomy of the Dog"),
    Slides("Essentials of Small Animal Anesthesia and Analgesia,"),
    Slides("Manual of Canine and Feline Cardiology"),
    Slides("Miller and Evans'\ Anatomy of the Dog"),
    Slides("Manual of Canine and Feline Cardiology"),
    Slides("Farm Animal Anesthesia: Cattle, Small Ruminants, Camelids, and Pigs"),
    Slides("Current Therapy in Large Animal Theriogenology"),


  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar:const SizedBox(
        height: 40,
        width: double.infinity,
        
        ),
      drawer: const NavBarDrawer(),
      appBar: CustomAppBar(
        color: Colors.white,
        title: "VetMed",
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 10.0, right: 10.0, top: 10),
        child: SingleChildScrollView(
          physics: const NeverScrollableScrollPhysics(),
          child: Column(children: [
            const Center(
                child: CustomHeading(
              text: "Slides",
              style: TextStyle(
                  fontSize: 40, fontWeight: FontWeight.w700, color: loginColor),
            )),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Expanded(
                    child: SlideSearchBox(
                  textEditingController: searchSlideController,
                  searchIcon: const Icon(Icons.search),
                  searchText: "Slides Search...",
                  hintStyle: TextStyle(
                      color: Colors.grey[500],
                      fontSize: 14,
                      fontStyle: FontStyle.italic),
                )),
              ],
            ),
            const SizedBox(height: 30,),
            const SlideTitleCardTile(text: "Title",),
            Container(
                decoration: const BoxDecoration(
                    borderRadius:
                        BorderRadius.only(topLeft: Radius.circular(10))),
                child: SlideCardTile(
                  slides: slideItem,
                ))
          ]),
        ),
      ),
    );
  }
}
