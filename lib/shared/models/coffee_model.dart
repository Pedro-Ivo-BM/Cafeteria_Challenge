import 'dart:convert';
import 'package:cafeteria_challenge/shared/models/size_model.dart';

class CoffeeModel {
    
    String id;
    DateTime createdAt;
    String name;
    List<Size> sizes;
    double sugarPrice;

  CoffeeModel({
    required this.id,
    required this.createdAt,
    required this.name,
    required this.sizes,
    required this.sugarPrice,
  });

   

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'createdAt': createdAt.millisecondsSinceEpoch,
      'name': name,
      'sizes': sizes.map((x) => x.toMap()).toList(),
      'sugarPrice': sugarPrice,
    };
  }

  factory CoffeeModel.fromMap(Map<String, dynamic> map) {
    return CoffeeModel(
      id: map['id'] ?? '',
      createdAt: DateTime.parse(map['createdAt']),
      name: map['name'] ?? '',
      sizes: List<Size>.from(map['sizes']?.map((x) => Size.fromMap(x))),
      sugarPrice: map['sugarPrice']?.toDouble() ?? 0.0,
    );
  }

  String toJson() => json.encode(toMap());

  factory CoffeeModel.fromJson(String source) => CoffeeModel.fromMap(json.decode(source));
}


