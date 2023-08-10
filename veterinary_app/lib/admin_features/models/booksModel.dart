import 'dart:convert';

class UploadBookInfo {
  final String title;
  final String fileName;
  final String year;
  final String pages;


  UploadBookInfo({
    required this.title,
    required this.fileName,
    required this.pages,
    required this.year
  });

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'fileName': fileName,
      'year':year,
      'pages':  pages


    };
  }

  factory UploadBookInfo.fromMap(Map<String, dynamic> map) {
    return UploadBookInfo(
      title: map['title'] ?? '',
      fileName: map['fileName'] ?? '',
      year: map['year'] ?? '',
      pages: map['pages'] ?? ''

   
    );
  }

  String toJson() => json.encode(toMap());

  factory UploadBookInfo.fromJson(String source) =>
      UploadBookInfo.fromMap(json.decode(source));
}