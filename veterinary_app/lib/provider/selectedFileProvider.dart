import 'package:flutter/material.dart';

class SelectedFileProvider extends ChangeNotifier{
  String? filePath;

  void updateFilePath(String newPath) {
    filePath = newPath;
    notifyListeners();
  }
}