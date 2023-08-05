import 'dart:convert';
import 'package:flutter/material.dart';

import '../../../utils/global_variables.dart';

class BooksPageSearchBox extends StatelessWidget {
  final String searchText;
  final Icon searchIcon;
  final TextStyle hintStyle;
  final TextEditingController textEditingController;
  const BooksPageSearchBox(
      {super.key,
      required this.searchText,
      required this.searchIcon,
      required this.hintStyle,
      required this.textEditingController});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
          color: searchBoxColor, borderRadius: BorderRadius.circular(25)),
      child: Padding(
        padding: const EdgeInsets.only(bottom: 4.0),
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

class BooksCardTitleTile extends StatefulWidget {
  final String text;
  final String midText;
  final String trailingText;
  const BooksCardTitleTile(
      {super.key,
      required this.text,
      required this.midText,
      required this.trailingText});

  @override
  State<BooksCardTitleTile> createState() => _BooksCardTitleTileState();
}

class _BooksCardTitleTileState extends State<BooksCardTitleTile> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: Card(
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20))),
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(widget.text),
              Text(widget.midText),
              Text(widget.trailingText)
            ],
          ),
        ),
      ),
    );
  }
}

class Books {
  final String bookInfo;
  final String bookAuthor;
 final String bookPage;

  Books({required this.bookInfo, required this.bookAuthor,required this.bookPage});
}

class BooksCardTile extends StatelessWidget {
  List<Books> books;
   BooksCardTile({super.key, required this.books});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
       shrinkWrap: true,
      itemCount: books.length,
      scrollDirection: Axis.vertical,
      itemBuilder: (BuildContext context, int index) {
        final booksPage = books[index];
      return Card(
        child: Padding(
          padding:
              const EdgeInsets.only(left: 25, right: 0, top: 18, bottom: 18),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                flex: 2,
                child: Text(booksPage.bookInfo, overflow: TextOverflow.ellipsis)),
              Expanded(
                flex: 2,
                child: Text(booksPage.bookAuthor, overflow: TextOverflow.ellipsis)),
              Expanded(
                flex: 1,
                child: Text(booksPage.bookPage))
            ],
          ),
      
        ),
      
      );
      }
    );
  }
}
