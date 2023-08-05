import 'package:flutter/material.dart';
import '../../../utils/global_variables.dart';

class SlideSearchBox extends StatelessWidget {
  final String searchText;
  final Icon searchIcon;
  final TextStyle hintStyle;
  final TextEditingController textEditingController;
  const SlideSearchBox(
      {super.key,
      required this.searchText,
      required this.searchIcon,
      required this.hintStyle,
      required this.textEditingController});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      decoration: BoxDecoration(
          color: searchBoxColor, borderRadius: BorderRadius.circular(25)),
      child: Padding(
        padding: const EdgeInsets.only(bottom:4.0),
        child: TextField(
          textAlign: TextAlign.left,
          controller: textEditingController,
            decoration: InputDecoration(
                hintText: searchText,
                hintStyle: hintStyle,
                prefixIcon: searchIcon,
                border: InputBorder.none)),
      ),
    );
  }
}