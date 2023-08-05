import 'package:flutter/material.dart';

class SearchBox extends StatelessWidget {
  final String searchText;
  final Icon searchIcon;
  final TextStyle hintStyle;
  final TextEditingController textEditingController;
  const SearchBox(
      {super.key,
      required this.searchText,
      required this.searchIcon,
      required this.hintStyle,
      required this.textEditingController});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      decoration: BoxDecoration(
          color: Colors.grey[200], borderRadius: BorderRadius.circular(70)),
      child: TextField(
        controller: textEditingController,
          decoration: InputDecoration(
              hintText: searchText,
              hintStyle: hintStyle,
              prefixIcon: searchIcon,
              border: InputBorder.none)),
    );
  }
}