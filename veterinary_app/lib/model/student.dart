import 'dart:convert';

class Student {
  final String id;
  final String pin;
  final List roles;
  final String accessToken;

  Student(
      {required this.id,
      required this.pin,
      required this.roles,
      required this.accessToken});

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'pin': pin,
      'roles': roles,
      'accessToken': accessToken,

    };
  }

  factory Student.fromMap(Map<String, dynamic> map) {
    return Student(
        id: map['id'] ?? '',
        pin: map['pin'] ?? '',
        roles: List<dynamic>.from(map['roles'] ?? []),
        accessToken: map['accessToken'] ?? '');
  }
  String toJson() => json.encode(toMap());
  factory Student.fromJson(String source) => Student.fromMap(json.decode(source));
}
