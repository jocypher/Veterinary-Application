import 'dart:convert';
import 'package:http/http.dart' as http;
import '../user_features/books/books_page-widget/books_page_widget.dart';
import '../utils/global_variables.dart';

class BooksApi{

List<Books> books = [];

Future<void> getBooks() async{
    try{

        http.Response response = await http.get(Uri.parse('$uri/books'));
        var jsonResponse = jsonDecode(response.body);
        print(jsonResponse);
        if(response.statusCode == 200){
          jsonResponse.forEach((element){
            int pageNumber = element['pageNumber'] ?? 0;
                  Books booksModel = Books(
                    bookInfo: element['title'], 
                    bookAuthor: element['author'], 
                    bookPage: pageNumber,
                    uploadLink: element['uploadLink']
                    );
                books.add(booksModel);
          });
        }
    }catch(err){
      print(err.toString());
    }
}
}