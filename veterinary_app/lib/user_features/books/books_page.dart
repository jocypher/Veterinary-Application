import 'package:flutter/material.dart';
import 'package:veterinary_app/common/widgets/nav_bar.dart';
import 'package:veterinary_app/model/books.dart';


import '../../common/widgets/custom_app_bar.dart';
import '../../common/widgets/custom_heading.dart';
import '../../utils/global_variables.dart';
import 'books_page-widget/books_page_widget.dart';

class BooksPage extends StatefulWidget {
  static const String routeName = '/books-page';

  const BooksPage({Key? key}) : super(key: key);

  @override
  _BooksPageState createState() => _BooksPageState();
}

class _BooksPageState extends State<BooksPage> {
  final TextEditingController _bookSearchController = TextEditingController();
  List<Books> booksCategory = List<Books>.empty(growable: true);
  bool _isLoading = true;


@override
  void initState() {
    super.initState();
    getBooks();
  }


  getBooks() async{
  BooksApi booksApi = BooksApi();
  await booksApi.getBooks();
  booksCategory = booksApi.books;
  // print("Number of books fetched: ${booksApi.books.length}");
  setState(() {
    _isLoading = false;
  });
}

  @override
  void dispose() {
    _bookSearchController.dispose();
    super.dispose();
  }



 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBarDrawer(),
      appBar: const CustomAppBar(title: "VetMed", color: primaryColor),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            const Center(
              child: CustomHeading(
                text: "Books",
                style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.w700,
                    color: loginColor),
              ),
            ),
            const SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: BooksPageSearchBox(
                textEditingController: _bookSearchController,
                searchIcon: const Icon(Icons.search),
                searchText: "Books Search...",
                hintStyle: TextStyle(color: Colors.grey[500], fontSize: 14),
              ),
            ),
            const SizedBox(height: 20),
            const BooksCardTitleTile(text: "Title", midText: "Author", trailingText: "page Number"),
            const SizedBox(height: 5),
           _isLoading? const CircularProgressIndicator(color: loginColor,) :  
           Expanded(
             child: ListView.builder(
              scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemCount: booksCategory.length,
                itemBuilder: (context, index){
                  return BooksCardTile(
                  bookInfo: booksCategory[index].bookInfo, 
                  bookAuthor: booksCategory[index].bookAuthor, 
                  bookPage: booksCategory[index].bookPage, 
                  uploadLink: booksCategory[index].uploadLink
                  );
                }
                ),
           ),
          ],
        ),
      ),
    );
  }
}
