import 'dart:convert';

class OrderModel {
  DateTime createdAt;
  double price;
  double status;
  String id;

  OrderModel({
    required this.createdAt,
    required this.price,
    required this.status,
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return {
      'createdAt': createdAt.millisecondsSinceEpoch,
      'price': price,
      'status': status,
      'id': id,
    };
  }

  factory OrderModel.fromMap(Map<String, dynamic> map) {
    return OrderModel(
      createdAt: DateTime.fromMillisecondsSinceEpoch(map['createdAt']),
      price: map['price']?.toDouble() ?? 0.0,
      status: map['status']?.toDouble() ?? 0.0,
      id: map['id'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory OrderModel.fromJson(String source) =>
      OrderModel.fromMap(json.decode(source));
}
