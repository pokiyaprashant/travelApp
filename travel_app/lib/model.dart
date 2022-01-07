import 'dart:convert';

class Info {
  final String imageurl;
  final String name;
  final String price;
  Info({
    required this.imageurl,
    required this.name,
    required this.price,
  });

  Info copyWith({
    String? imageurl,
    String? name,
    String? price,
  }) {
    return Info(
      imageurl: imageurl ?? this.imageurl,
      name: name ?? this.name,
      price: price ?? this.price,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'imageurl': imageurl,
      'name': name,
      'price': price,
    };
  }

  factory Info.fromMap(Map<String, dynamic> map) {
    return Info(
      imageurl: map['imageurl'] ?? '',
      name: map['name'] ?? '',
      price: map['price'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Info.fromJson(String source) => Info.fromMap(json.decode(source));

  @override
  String toString() => 'Info(imageurl: $imageurl, name: $name, price: $price)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Info &&
        other.imageurl == imageurl &&
        other.name == name &&
        other.price == price;
  }

  @override
  int get hashCode => imageurl.hashCode ^ name.hashCode ^ price.hashCode;
}
