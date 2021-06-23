// To parse this JSON data, do
//
//     final products = productsFromMap(jsonString);

import 'dart:convert';

Products productsFromMap(String str) => Products.fromMap(json.decode(str));

String productsToMap(Products data) => json.encode(data.toMap());

class Products {
  Products({
    this.meta,
    this.data,
    this.status,
  });

  Meta meta;
  List<Datum> data;
  String status;

  factory Products.fromMap(Map<String, dynamic> json) => Products(
        meta: json["meta"] == null ? null : Meta.fromMap(json["meta"]),
        data: json["data"] == null
            ? null
            : List<Datum>.from(json["data"].map((x) => Datum.fromMap(x))),
        status: json["status"] == null ? null : json["status"],
      );

  Map<String, dynamic> toMap() => {
        "meta": meta == null ? null : meta.toMap(),
        "data": data == null
            ? null
            : List<dynamic>.from(data.map((x) => x.toMap())),
        "status": status == null ? null : status,
      };
}

class Datum {
  Datum({
    this.gallery,
    this.attribute,
    this.status,
    this.tax,
    this.id,
    this.name,
    this.sku,
    this.category,
    this.subcategory,
    this.price,
    this.discountPrice,
    this.type,
    this.unit,
    this.storeid,
    this.manufacture,
    this.minOrder,
    this.maxOrder,
    this.weight,
    this.height,
    this.stock,
    this.description,
    this.featuredImage,
    this.v,
    this.rating,
  });

  List<String> gallery;
  List<String> attribute;
  bool status;
  List<dynamic> tax;
  String id;
  String name;
  String sku;
  String category;
  String subcategory;
  int price;
  int discountPrice;
  String type;
  String unit;
  String storeid;
  String manufacture;
  int minOrder;
  int maxOrder;
  String weight;
  String height;
  int stock;
  String description;
  String featuredImage;
  int v;
  int rating;

  factory Datum.fromMap(Map<String, dynamic> json) => Datum(
        gallery: json["gallery"] == null
            ? null
            : List<String>.from(json["gallery"].map((x) => x)),
        attribute: json["attribute"] == null
            ? null
            : List<String>.from(json["attribute"].map((x) => x)),
        status: json["status"] == null ? null : json["status"],
        tax: json["tax"] == null
            ? null
            : List<dynamic>.from(json["tax"].map((x) => x)),
        id: json["_id"] == null ? null : json["_id"],
        name: json["name"] == null ? null : json["name"],
        sku: json["sku"] == null ? null : json["sku"],
        category: json["category"] == null ? null : json["category"],
        subcategory: json["subcategory"] == null ? null : json["subcategory"],
        price: json["price"] == null ? null : json["price"],
        discountPrice:
            json["discountPrice"] == null ? null : json["discountPrice"],
        type: json["type"] == null ? null : json["type"],
        unit: json["unit"] == null ? null : json["unit"],
        storeid: json["storeid"] == null ? null : json["storeid"],
        manufacture: json["manufacture"] == null ? null : json["manufacture"],
        minOrder: json["minOrder"] == null ? null : json["minOrder"],
        maxOrder: json["maxOrder"] == null ? null : json["maxOrder"],
        weight: json["weight"] == null ? null : json["weight"],
        height: json["height"] == null ? null : json["height"],
        stock: json["stock"] == null ? null : json["stock"],
        description: json["description"] == null ? null : json["description"],
        featuredImage:
            json["featuredImage"] == null ? null : json["featuredImage"],
        v: json["__v"] == null ? null : json["__v"],
        rating: json["rating"] == null ? null : json["rating"],
      );

  Map<String, dynamic> toMap() => {
        "gallery":
            gallery == null ? null : List<dynamic>.from(gallery.map((x) => x)),
        "attribute": attribute == null
            ? null
            : List<dynamic>.from(attribute.map((x) => x)),
        "status": status == null ? null : status,
        "tax": tax == null ? null : List<dynamic>.from(tax.map((x) => x)),
        "_id": id == null ? null : id,
        "name": name == null ? null : name,
        "sku": sku == null ? null : sku,
        "category": category == null ? null : category,
        "subcategory": subcategory == null ? null : subcategory,
        "price": price == null ? null : price,
        "discountPrice": discountPrice == null ? null : discountPrice,
        "type": type == null ? null : type,
        "unit": unit == null ? null : unit,
        "storeid": storeid == null ? null : storeid,
        "manufacture": manufacture == null ? null : manufacture,
        "minOrder": minOrder == null ? null : minOrder,
        "maxOrder": maxOrder == null ? null : maxOrder,
        "weight": weight == null ? null : weight,
        "height": height == null ? null : height,
        "stock": stock == null ? null : stock,
        "description": description == null ? null : description,
        "featuredImage": featuredImage == null ? null : featuredImage,
        "__v": v == null ? null : v,
        "rating": rating == null ? null : rating,
      };
}

class Meta {
  Meta({
    this.totalDataInDatabase,
  });

  int totalDataInDatabase;

  factory Meta.fromMap(Map<String, dynamic> json) => Meta(
        totalDataInDatabase: json["Total_Data_in_database"] == null
            ? null
            : json["Total_Data_in_database"],
      );

  Map<String, dynamic> toMap() => {
        "Total_Data_in_database":
            totalDataInDatabase == null ? null : totalDataInDatabase,
      };
}
