class Size {
    Size({
        required this.size,
        required this.price,
    });

    String size;
    double price;

    factory Size.fromJson(Map<String, dynamic> json) => Size(
        size: json["size"],
        price: json["price"].toDouble(),
    );

    Map<String, dynamic> toJson() => {
        "size": size,
        "price": price,
    };
}
