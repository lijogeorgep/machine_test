// To parse this JSON data, do
//
//     final category = categoryFromMap(jsonString);

import 'dart:convert';

Category categoryFromMap(String str) => Category.fromMap(json.decode(str));

String categoryToMap(Category data) => json.encode(data.toMap());

class Category {
  Category({
    this.status,
    this.data,
  });

  String status;
  Data data;

  factory Category.fromMap(Map<String, dynamic> json) => Category(
    status: json["status"] == null ? null : json["status"],
    data: json["data"] == null ? null : Data.fromMap(json["data"]),
  );

  Map<String, dynamic> toMap() => {
    "status": status == null ? null : status,
    "data": data == null ? null : data.toMap(),
  };
}

class Data {
  Data({
    this.status,
    this.id,
    this.name,
    this.icon,
    this.addedDate,
    this.v,
  });

  bool status;
  String id;
  String name;
  String icon;
  String addedDate;
  int v;

  factory Data.fromMap(Map<String, dynamic> json) => Data(
    status: json["status"] == null ? null : json["status"],
    id: json["_id"] == null ? null : json["_id"],
    name: json["name"] == null ? null : json["name"],
    icon: json["icon"] == null ? null : json["icon"],
    addedDate: json["addedDate"] == null ? null : json["addedDate"],
    v: json["__v"] == null ? null : json["__v"],
  );

  Map<String, dynamic> toMap() => {
    "status": status == null ? null : status,
    "_id": id == null ? null : id,
    "name": name == null ? null : name,
    "icon": icon == null ? null : icon,
    "addedDate": addedDate == null ? null : addedDate,
    "__v": v == null ? null : v,
  };
}
