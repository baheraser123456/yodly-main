// To parse this JSON data, do
//
//     final apiReviewItems = apiReviewItemsFromJson(jsonString);

import 'dart:convert';

import 'package:yodly/common/data/page_info.dart';

ApiReviewItems apiReviewItemsFromJson(String str) =>
    ApiReviewItems.fromJson(json.decode(str));

String apiReviewItemsToJson(ApiReviewItems data) => json.encode(data.toJson());

class ApiReviewItems {
  final Reviews? reviews;

  ApiReviewItems({
    this.reviews,
  });

  factory ApiReviewItems.fromJson(Map<String, dynamic> json) => ApiReviewItems(
        reviews:
            json["reviews"] == null ? null : Reviews.fromJson(json["reviews"]),
      );

  Map<String, dynamic> toJson() => {
        "reviews": reviews?.toJson(),
      };
}

class Reviews {
  final Data? data;
  final int? code;
  final String? message;
  final bool? success;

  Reviews({
    this.data,
    this.code,
    this.message,
    this.success,
  });

  factory Reviews.fromJson(Map<String, dynamic> json) => Reviews(
        data: json["data"] == null ? null : Data.fromJson(json["data"]),
        code: json["code"],
        message: json["message"],
        success: json["success"],
      );

  Map<String, dynamic> toJson() => {
        "data": data?.toJson(),
        "code": code,
        "message": message,
        "success": success,
      };
}

class Data {
  final ApiPageInfo? pageInfo;
  final List<Item>? items;

  Data({
    this.pageInfo,
    this.items,
  });

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        pageInfo: json["pageInfo"] == null
            ? null
            : ApiPageInfo.fromJson(json["pageInfo"]),
        items: json["items"] == null
            ? []
            : List<Item>.from(json["items"]!.map((x) => Item.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "pageInfo": pageInfo?.toJson(),
        "items": items == null
            ? []
            : List<dynamic>.from(items!.map((x) => x.toJson())),
      };
}

class Item {
  final User? user;
  final String? id;
  final String? name;
  final String? description;
  final String? title;
  final dynamic country;
  final dynamic city;
  final dynamic specificRating;
  final List<Attachment>? attachments;

  Item({
    this.user,
    this.id,
    this.name,
    this.description,
    this.title,
    this.country,
    this.city,
    this.specificRating,
    this.attachments,
  });

  factory Item.fromJson(Map<String, dynamic> json) => Item(
        user: json["user"] == null ? null : User.fromJson(json["user"]),
        id: json["id"],
        name: json["name"],
        description: json["description"],
        title: json["title"],
        country: json["country"],
        city: json["city"],
        specificRating: json["specificRating"],
        attachments: json["attachments"] == null
            ? []
            : List<Attachment>.from(
                json["attachments"]!.map((x) => Attachment.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "user": user?.toJson(),
        "id": id,
        "name": name,
        "description": description,
        "title": title,
        "country": country,
        "city": city,
        "specificRating": specificRating,
        "attachments": attachments == null
            ? []
            : List<dynamic>.from(attachments!.map((x) => x.toJson())),
      };
}

class Attachment {
  final String? attachmentType;
  final String? link;

  Attachment({
    this.attachmentType,
    this.link,
  });

  factory Attachment.fromJson(Map<String, dynamic> json) => Attachment(
        attachmentType: json["attachmentType"],
        link: json["link"],
      );

  Map<String, dynamic> toJson() => {
        "attachmentType": attachmentType,
        "link": link,
      };
}

class User {
  final String? userName;

  User({
    this.userName,
  });

  factory User.fromJson(Map<String, dynamic> json) => User(
        userName: json["userName"],
      );

  Map<String, dynamic> toJson() => {
        "userName": userName,
      };
}
