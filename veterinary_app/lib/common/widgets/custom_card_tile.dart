import 'package:flutter/material.dart';

import '../../utils/global_variables.dart';


class CardTile extends StatefulWidget {
  final String trailingText;
  final String text;
  const CardTile({super.key, required this.text, required this.trailingText});

  @override
  State<CardTile> createState() => _CardTileState();
}

class _CardTileState extends State<CardTile> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: 12,
        scrollDirection: Axis.vertical,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            child: ListTile(
              title: Text(widget.text),
              trailing: Text(widget.trailingText),
            ),
          );
        },
    );
  }
}
class TitleCardTile extends StatefulWidget {
  final String trailingText;
  final String text;
  const TitleCardTile({super.key, required this.text, required this.trailingText});

  @override
  State<TitleCardTile> createState() => _TitleCardTileState();
}

class _TitleCardTileState extends State<TitleCardTile> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: Card(
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20))),
        child: ListTile(
          title: Text(
            widget.text,
            style: const TextStyle(color: slideTitleColor),
          ),
          trailing: Text(widget.trailingText),
        ),
      ),
    );
  }
}

