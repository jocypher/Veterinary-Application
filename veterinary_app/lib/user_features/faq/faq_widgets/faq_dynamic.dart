import 'package:flutter/material.dart';

class Info {
  String question;
  String details;

  Info({required this.question, required this.details});
}

class DynamicListWidget extends StatefulWidget {
  @override
  _DynamicListWidgetState createState() => _DynamicListWidgetState();
}

class _DynamicListWidgetState extends State<DynamicListWidget> {
  List<Info> infoList = [
    Info(
      question: "How do I request for an official transcript?",
      details: "When ordering online, you can place a hold on your official transcript until your degree is conferred but please be aware of the 30 day window. After 30 days, your order will be canceled. The registrar’s office recommends using the transcript request form to place orders for official transcripts with holds for degree conferral (or requests greater than 30 days)",
    ),
    Info(
      question: "What are core electives in third year?",
      details: "During the third year, students are required to take a minimum number of core elective credits in the fall and the spring",
    ),
    Info(
      question: "How do I reset my password?",
      details: "To reset the password just click the the reset button to reset it",
    ),
    Info(
      question: "How do I access my slides page",
      details: "To access slides click on the home section and select the slide page on the home section",
    ),
    Info(
      question: "How do I go to the news page ",
      details: "To access news click on the home section and select the slide page on the home section",
    ),

  ];

  late List<bool> showDetailsList;

  @override
  void initState() {
    super.initState();
    showDetailsList = List.filled(infoList.length, false);
  }

  void toggleDetails(int index) {
    setState(() {
      showDetailsList[index] = !showDetailsList[index];
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: List.generate(infoList.length, (index) {
          return Column(
            children: [
              const Divider(color: Colors.black, thickness: 1),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(infoList[index].question),
                  IconButton(
                    onPressed: () => toggleDetails(index),
                    icon: const Icon(Icons.add),
                  ),
                ],
              ),
              if (showDetailsList[index])
                Container(
                  padding: const EdgeInsets.all(16),
                  color: Colors.grey[200],
                  child: Text(infoList[index].details),
                ),
            ],
          );
        }),
      ),
    );
  }
}
