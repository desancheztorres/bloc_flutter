import 'dart:convert';

import 'package:flutter/foundation.dart';

class User {
  int id;
  final String name, email, password;
  String createdAt, updatedAt;
  int status;

  User({
    this.id,
    @required this.name,
    @required this.email,
    @required this.password,
    this.status,
    this.createdAt,
    this.updatedAt,
  });

  factory User.fromJson(Map<String, dynamic> json) => User(
        id: json["id"] as int,
        name: json["name"],
        email: json["email"],
        password: json["password"],
        status: json["status"] as int,
        createdAt: json["created_at"],
        updatedAt: json["updated_at"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "email": email,
        "password": password,
        "status": status,
        "created_at": createdAt,
        "updated_at": updatedAt,
      };

  @override
  String toString() {
    return '''User { 
      name: $name,
      email: $email,
      password: $password,
      }''';
  }
}

User userFromJson(String str) => User.fromJson(json.decode(str));

String userToJson(User data) => json.encode(data.toJson());
