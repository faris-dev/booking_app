// To parse this JSON data, do
//
//     final loginResponse = loginResponseFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

LoginResponse loginResponseFromJson(String str) => LoginResponse.fromJson(json.decode(str));

String loginResponseToJson(LoginResponse data) => json.encode(data.toJson());

class LoginResponse {
  LoginResponse({
    @required this.status,
    @required this.name,
    @required this.refresh,
    @required this.access,
    @required this.message,
    @required this.urlId,
  });

  bool? status;
  String? name;
  String? refresh;
  String? access;
  String? message;
  String? urlId;

  factory LoginResponse.fromJson(Map<String, dynamic> json) => LoginResponse(
    status: json["status"] == null ? null : json["status"],
    name: json["name"] == null ? null : json["name"],
    refresh: json["refresh"] == null ? null : json["refresh"],
    access: json["access"] == null ? null : json["access"],
    message: json["message"] == null ? null : json["message"],
    urlId: json["url_id"] == null ? null : json["url_id"],
  );

  Map<String, dynamic> toJson() => {
    "status": status == null ? null : status,
    "name": name == null ? null : name,
    "refresh": refresh == null ? null : refresh,
    "access": access == null ? null : access,
    "message": message == null ? null : message,
    "url_id": urlId == null ? null : urlId,
  };
}
