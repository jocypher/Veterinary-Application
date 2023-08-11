import 'package:flutter/material.dart';

import '../model/student.dart';

class StudentProvider extends ChangeNotifier {
  Student _student =
      Student(id: "", pin: "", roles: [], accessToken: "");

  Student get student => _student;
  void setStudent(String student) {
    _student = Student.fromJson(student);
    notifyListeners();
  }
}
