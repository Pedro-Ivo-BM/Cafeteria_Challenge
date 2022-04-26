import 'dart:convert';

class ItemsModel {
  DateTime createdAt;
  String coffeeId;
  int size;
  int amount;
  int sugarAmount;
  String id;
  String orderId;
  double unityPrice;

  ItemsModel({
    required this.createdAt,
    required this.coffeeId,
    required this.size,
    required this.amount,
    required this.sugarAmount,
    required this.id,
    required this.orderId,
    required this.unityPrice,
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
    };
  }

  factory ItemsModel.fromMap(Map<String, dynamic> map) {
    return ItemsModel(
      createdAt: DateTime.fromMillisecondsSinceEpoch(map['createdAt']),
      coffeeId: map['coffeeId'] ?? '',
      size: map['size']?.toInt() ?? 0,
      amount: map['amount']?.toInt() ?? 0,
      sugarAmount: map['sugarAmount']?.toInt() ?? 0,
      id: map['id'] ?? '',
      orderId: map['orderId'] ?? '',
      unityPrice: map['unityPrice']?.toDouble() ?? 0.0,
    );
  }

  String toJson() => json.encode(toMap());

  factory ItemsModel.fromJson(String source) =>
      ItemsModel.fromMap(json.decode(source));
}
