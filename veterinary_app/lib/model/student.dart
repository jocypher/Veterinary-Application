import 'dart:convert';

class Student {
  final String id;
  final String pin;
  final String type;
  final String accessToken;

  Student(
      {required this.id,
      required this.pin,
      required this.type,
      required this.accessToken});

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'pin': pin,
      'type': type,
      'accesToken': accessToken,

    };
  }

  factory Student.fromMap(Map<String, dynamic> map) {
    return Student(
        id: map['id'] ?? '',
        pin: map['pin'] ?? '',
        type: map['type'] ?? '',
        accessToken: map['accessToken'] ?? '');
  }
  String toJson() => json.encode(toMap());
  factory Student.fromJson(String source) => Student.fromMap(json.decode(source));
}
