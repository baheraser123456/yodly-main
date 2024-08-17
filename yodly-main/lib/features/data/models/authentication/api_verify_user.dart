// To parse this JSON data, do
//
//     final apiVerifyUserByEmail = apiVerifyUserByEmailFromJson(jsonString);

import 'dart:convert';

ApiVerifyUserByEmail apiVerifyUserByEmailFromJson(String str) =>
    ApiVerifyUserByEmail.fromJson(json.decode(str));

String apiVerifyUserByEmailToJson(ApiVerifyUserByEmail data) =>
    json.encode(data.toJson());

class ApiVerifyUserByEmail {
  final VerifyUserByEmail? verifyUserByEmail;

  ApiVerifyUserByEmail({
    this.verifyUserByEmail,
  });

  factory ApiVerifyUserByEmail.fromJson(Map<String, dynamic> json) =>
      ApiVerifyUserByEmail(
        verifyUserByEmail: json["verifyUserByEmail"] == null
            ? null
            : VerifyUserByEmail.fromJson(json["verifyUserByEmail"]),
      );

  Map<String, dynamic> toJson() => {
        "verifyUserByEmail": verifyUserByEmail?.toJson(),
      };
}

class VerifyUserByEmail {
  final Data? data;
  final int? code;
  final bool? success;
  final String? message;

  VerifyUserByEmail({
    this.data,
    this.code,
    this.success,
    this.message,
  });

  factory VerifyUserByEmail.fromJson(Map<String, dynamic> json) =>
      VerifyUserByEmail(
        data: json["data"] == null ? null : Data.fromJson(json["data"]),
        code: json["code"],
        success: json["success"],
        message: json["message"],
      );

  Map<String, dynamic> toJson() => {
        "data": data?.toJson(),
        "code": code,
        "success": success,
        "message": message,
      };
}

class Data {
  final String? token;

  Data({
    this.token,
  });

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        token: json["token"],
      );

  Map<String, dynamic> toJson() => {
        "token": token,
      };
}
