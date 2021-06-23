// To parse this JSON data, do
//
//     final add = addFromMap(jsonString);

import 'dart:convert';

Add addFromMap(String str) => Add.fromMap(json.decode(str));

String addToMap(Add data) => json.encode(data.toMap());

class Add {
  Add({
    this.status,
    this.data,
  });

  String status;
  Data data;

  factory Add.fromMap(Map<String, dynamic> json) => Add(
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
    this.parentCategory,
    this.subcategoryName,
    this.addedDate,
    this.v,
  });

  bool status;
  String id;
  String parentCategory;
  String subcategoryName;
  String addedDate;
  int v;

  factory Data.fromMap(Map<String, dynamic> json) => Data(
    status: json["status"] == null ? null : json["status"],
    id: json["_id"] == null ? null : json["_id"],
    parentCategory: json["parent_category"] == null ? null : json["parent_category"],
    subcategoryName: json["subcategory_name"] == null ? null : json["subcategory_name"],
    addedDate: json["added_date"] == null ? null : json["added_date"],
    v: json["__v"] == null ? null : json["__v"],
  );

  Map<String, dynamic> toMap() => {
    "status": status == null ? null : status,
    "_id": id == null ? null : id,
    "parent_category": parentCategory == null ? null : parentCategory,
    "subcategory_name": subcategoryName == null ? null : subcategoryName,
    "added_date": addedDate == null ? null : addedDate,
    "__v": v == null ? null : v,
  };
}
