import 'package:flutter/material.dart';
import '../../../utils/global_variables.dart';

class SearchYear extends StatelessWidget {
  final String searchText;
  final TextStyle hintStyle;
  final TextEditingController textEditingController;
  const SearchYear(
      {super.key,
      required this.searchText,
      required this.hintStyle,
      required this.textEditingController});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      decoration: BoxDecoration(
          color: searchBoxColor, borderRadius: BorderRadius.circular(80)),
      child: Padding(
        padding: const EdgeInsets.only(left:15.0, bottom: 5),
        child: TextField(
          controller: textEditingController,
            decoration: InputDecoration(
                hintText: searchText,
                hintStyle: hintStyle,
                border: InputBorder.none)),
      ),
    );
  }
}