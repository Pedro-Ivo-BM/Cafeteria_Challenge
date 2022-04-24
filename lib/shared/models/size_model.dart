import 'dart:convert';

class Size {
  String size;
  double price;
  Size({
    required this.size,
    required this.price,
  });

    

  Map<String, dynamic> toMap() {
    return {
      'size': size,
      'price': price,
    };
  }

  factory Size.fromMap(Map<String, dynamic> map) {
    return Size(
      size: map['size'] ?? '',
      price: map['price']?.toDouble() ?? 0.0,
    );
  }

  String toJson() => json.encode(toMap());

  factory Size.fromJson(String source) => Size.fromMap(json.decode(source));
}
