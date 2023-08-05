import 'package:flutter/material.dart';


class PastQuestion {
  final String pastQuestionsTopic;
  final DateTime pastQuestionsYear;

  PastQuestion({required this.pastQuestionsTopic, required this.pastQuestionsYear});
}

class PastQuestionCard extends StatelessWidget {
  List<PastQuestion> currentPastQuestions;
  PastQuestionCard({
    super.key,
    required this.currentPastQuestions,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: currentPastQuestions.length,
      scrollDirection: Axis.vertical,
      itemBuilder: (BuildContext context, int index) {
        final pastQuestion = currentPastQuestions[index];
        return Card(
          child: ListTile(
            title: Text(pastQuestion.pastQuestionsTopic),
            trailing: Text(pastQuestion.pastQuestionsYear.year.toString()),
          ),
        );
      },
    );
  }
}

