import 'package:flutter/material.dart';
import 'package:veterinary_app/user_features/past_questions/past-questions_widget.dart/past-questions_card.dart';
import 'package:veterinary_app/user_features/past_questions/past-questions_widget.dart/past_question_searchBox.dart';
import 'package:veterinary_app/user_features/past_questions/past-questions_widget.dart/search_year.dart';
import '../../common/widgets/custom_app_bar.dart';
import '../../common/widgets/custom_card_tile.dart';
import '../../common/widgets/custom_heading.dart';
import '../../common/widgets/nav_bar.dart';
import '../../utils/global_variables.dart';

class PastQuestionsPage extends StatefulWidget {
  static const routeName = '/pastquestion-page';
  const PastQuestionsPage({super.key});

  @override
  State<PastQuestionsPage> createState() => _PastQuestionsPageState();
}

class _PastQuestionsPageState extends State<PastQuestionsPage> {
  final TextEditingController pastQuestionsController = TextEditingController();
  final TextEditingController pastQuestionYearController = TextEditingController();
  @override
  void dispose() {
    super.dispose();
    pastQuestionsController.dispose();
    pastQuestionYearController.dispose();
  }

  List<PastQuestion> pastQuestions = [
    PastQuestion(pastQuestionsTopic: "Vertinarian Introduction", pastQuestionsYear: DateTime(2016)),
    PastQuestion(pastQuestionsTopic: "Nature of Work", pastQuestionsYear: DateTime(2013)),
    PastQuestion(pastQuestionsTopic: "Working conditions", pastQuestionsYear: DateTime(2018)),
    PastQuestion(pastQuestionsTopic: "Training, Qualifications and Advancement", pastQuestionsYear: DateTime(2020)),
    PastQuestion(pastQuestionsTopic: "Job Outlook/ Employment", pastQuestionsYear: DateTime(2021)),
    PastQuestion(pastQuestionsTopic: "Electrocardiography of the Dog and Cat, Diagnosis of Arrhythmias", pastQuestionsYear: DateTime(2019)),
    PastQuestion(pastQuestionsTopic: "Miller and Evans'\ Anatomy of the Dog", pastQuestionsYear: DateTime(2019)),
    PastQuestion(pastQuestionsTopic: "Essentials of Small Animal Anesthesia and Analgesia,", pastQuestionsYear: DateTime(2018)),
    PastQuestion(pastQuestionsTopic: "Manual of Canine and Feline Cardiology", pastQuestionsYear: DateTime(2017)),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavBarDrawer(),
      appBar: CustomAppBar(
        color: Colors.white,
        title: "VetMed",
      ),
      bottomNavigationBar: const SizedBox(
        height: 40,
        width: double.infinity,
      ),
      body: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.only(top: 10.0, left: 10, right: 10),
          child: Column(children: [
            const Center(
                child: CustomHeading(
              text: "Past Questions",
              style: TextStyle(
                  fontSize: 40, fontWeight: FontWeight.w700, color: loginColor),
            )),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Expanded(
                    child: PastQSearchBox(
                  textEditingController: pastQuestionsController,
                  searchIcon: const Icon(Icons.search),
                  searchText: "Search for course",
                  hintStyle: TextStyle(color: Colors.grey[500], fontSize: 14),
                )),
                const SizedBox(
                  width: 10,
                ),
                SizedBox(
                  width: 100,
                  child: SearchYear(
                    textEditingController: pastQuestionYearController,
                    searchText: "Year",
                    hintStyle: TextStyle(
                        color: Colors.grey[500],
                        fontSize: 14,
                        fontStyle: FontStyle.italic),
                  ),
                ),
              ],
            ),
            Container(
                margin: const EdgeInsets.only(top: 20),
                child:
                    const TitleCardTile(text: "Title", trailingText: "Year")),
            Container(
                margin: const EdgeInsets.only(top: 0),
                decoration: const BoxDecoration(
                    borderRadius:
                        BorderRadius.only(topLeft: Radius.circular(10))),
                child: PastQuestionCard(
                    currentPastQuestions: pastQuestions))
          ]),
        ),
      ),
    );
  }
}
