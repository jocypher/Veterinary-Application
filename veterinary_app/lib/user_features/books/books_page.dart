import 'package:flutter/material.dart';


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

  @override
  void dispose() {
    _bookSearchController.dispose();
    super.dispose();
  }

  List<Books> books = [
    Books(
        bookInfo: "Cotes Clinical Veterinary Advisor Dogs and Cats 4th Edition",
        bookAuthor: "Leah A cohn",
        bookPage: "504"),
    Books(
        bookInfo:
            "Blackwell\'s Five-minute Veterinary Consult Canine and Feline",
        bookAuthor: "Larry P. Tilly",
        bookPage: "1101"),
    Books(
        bookInfo: "Small Animal Clinical Techniques,",
        bookAuthor: "Susan M Taylor",
        bookPage: "400"),
    Books(
        bookInfo: "Atlas of Small Animal Ultrasonography",
        bookAuthor: "Dominique Pennick",
        bookPage: "674"),
    Books(
        bookInfo: "Greene Infectious Diseases of the Dog and Cat",
        bookAuthor: "Michael Lappin",
        bookPage: "769"),
    Books(
        bookInfo:
            "Small Animal Dermatology: A Color Atlas and Therapeutic Guide ",
        bookAuthor: "Keith A. Hnilica",
        bookPage: "578"),
    Books(
        bookInfo: "Miller and Evans\'Anatomy of the Dog ",
        bookAuthor: "John W Hermanson",
        bookPage: "405"),
    Books(
        bookInfo: "Essentials of Small Animal Anesthesia and Analgesia,",
        bookAuthor: "Kurt A Grimm",
        bookPage: "530"),
    Books(
        bookInfo: "BSAVA Small Animal Formulary, Part A, Canine and Feline,",
        bookAuthor: "Fergus Allerton",
        bookPage: "400"),
    Books(
        bookInfo: "BSAVA Small Animal Formulary, Part B, Exotic Pets,",
        bookAuthor: "Joana Hedley",
        bookPage: "670"),
    Books(
        bookInfo: "Manual of Canine and Feline Cardiology,",
        bookAuthor: "Larry P. Tilley",
        bookPage: "1001"),
    Books(
        bookInfo: "Atlas for the Diagnosis of Tumors in the Dog and Cat",
        bookAuthor: "Wiley BlackWell",
        bookPage: "789"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "VetMed", color: primaryColor),
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
            Expanded(
              child: Column(
                children: [
                  BooksCardTitleTile(
                      text: "Title", midText: "Author", trailingText: "Pages"),
                  Expanded(child: BooksCardTile(books: books))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
