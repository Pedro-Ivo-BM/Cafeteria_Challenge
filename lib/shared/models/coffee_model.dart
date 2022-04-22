import 'dart:convert';
import 'package:cafeteria_challenge/shared/models/size_model.dart';

CoffeeModel coffeeModelFromJson(String str) => CoffeeModel.fromJson(json.decode(str));

String coffeeModelToJson(CoffeeModel data) => json.encode(data.toJson());

class CoffeeModel {
    CoffeeModel({
        required this.id,
        required this.createdAt,
        required this.name,
        required this.sizes,
        required this.sugarPrice,
    });

    String id;
    DateTime createdAt;
    String name;
    List<Size> sizes;
    double sugarPrice;

    factory CoffeeModel.fromJson(Map<String, dynamic> json) => CoffeeModel(
        id: json["id"],
        createdAt: DateTime.parse(json["createdAt"]),
        name: json["name"],
        sizes: List<Size>.from(json["sizes"].map((x) => Size.fromJson(x))),
        sugarPrice: json["sugarPrice"].toDouble(),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "createdAt": createdAt.toIso8601String(),
        "name": name,
        "sizes": List<dynamic>.from(sizes.map((x) => x.toJson())),
        "sugarPrice": sugarPrice,
    };
}


