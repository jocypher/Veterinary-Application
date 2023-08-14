import 'dart:convert';


class UploadSlidesInfo {
  final String title;
  final String fileName;


  UploadSlidesInfo({
    required this.title,
    required this.fileName
  });

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'fileName': fileName,


    };
  }

  factory UploadSlidesInfo.fromMap(Map<String, dynamic> map) {
    return UploadSlidesInfo(
      title: map['title'] ?? '',
      fileName: map['fileName'] ?? '',

   
    );
  }

  String toJson() => json.encode(toMap());

  factory UploadSlidesInfo.fromJson(String source) =>
      UploadSlidesInfo.fromMap(json.decode(source));
}