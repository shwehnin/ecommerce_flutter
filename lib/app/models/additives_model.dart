import 'dart:convert';

AdditiveModel additiveModelFromJson(String str) =>
    AdditiveModel.fromJson(json.decode(str));

String additiveModelToJson(AdditiveModel data) => json.encode(data.toJson());

class AdditiveModel {
  int id;
  String title;
  String price;

  AdditiveModel({
    required this.id,
    required this.title,
    required this.price,
  });

  factory AdditiveModel.fromJson(Map<String, dynamic> json) => AdditiveModel(
        id: json["id"],
        title: json["title"],
        price: json["price"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "price": price,
      };
}
