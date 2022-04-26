import 'dart:convert';

class ItemsModel {
  DateTime createdAt;
  String coffeeId;
  String size;
  int amount;
  int sugarAmount;
  String id;
  String orderId;
  double unityPrice;
  String coffeeName;

  ItemsModel({
    required this.createdAt,
    required this.coffeeId,
    required this.size,
    required this.amount,
    required this.sugarAmount,
    required this.id,
    required this.orderId,
    required this.unityPrice,
    required this.coffeeName,
  });

  Map<String, dynamic> toMap() {
    return {
      'createdAt': createdAt.millisecondsSinceEpoch,
      'coffeeId': coffeeId,
      'size': size,
      'amount': amount,
      'sugarAmount': sugarAmount,
      'id': id,
      'orderId': orderId,
      'unityPrice': unityPrice,
      'coffeeName': coffeeName,
    };
  }

  factory ItemsModel.fromMap(Map<String, dynamic> map) {
    return ItemsModel(
      createdAt: DateTime.fromMillisecondsSinceEpoch(map['createdAt']),
      coffeeId: map['coffeeId'] ?? '',
      size: map['size'] ?? '',
      amount: map['amount']?.toInt() ?? 0,
      sugarAmount: map['sugarAmount']?.toInt() ?? 0,
      id: map['id'] ?? '',
      orderId: map['orderId'] ?? '',
      unityPrice: map['unityPrice']?.toDouble() ?? 0.0,
      coffeeName: map['coffeeName'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory ItemsModel.fromJson(String source) =>
      ItemsModel.fromMap(json.decode(source));
}
