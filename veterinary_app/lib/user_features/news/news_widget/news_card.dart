import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class News {
  final String headline;
  final DateTime headlineDate;

  News({required this.headline, required this.headlineDate});
}

// ignore: must_be_immutable
class NewsCard extends StatelessWidget {
  List<News> currentNews;
  NewsCard({
    super.key,
    required this.currentNews,
  });

  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    String headlineDate = DateFormat.jm().format(now);
    return ListView.builder(
      shrinkWrap: true,
      itemCount: currentNews.length,
      physics: const AlwaysScrollableScrollPhysics(),
      scrollDirection: Axis.vertical,
      itemBuilder: (BuildContext context, int index) {
        final news = currentNews[index];
        return SizedBox(
          width: 120,
          height: 140,
          child: Card(
            shadowColor: Colors.black87,
            elevation: 3,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 35.0, left: 20.0, bottom: 15.0, right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Text(news.headline), Text(news.headlineDate.toIso8601String(),style: const TextStyle(color: Color.fromRGBO(145, 160, 183, 1)),)],
              ),
            ),
          ),
        );
      },
    );
  }
}
