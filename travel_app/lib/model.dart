import 'dart:convert';

import 'package:flutter/foundation.dart';

class Info {
  final String imageurl;
  final String name;
  final String price;
  final List url;
  Info({
    required this.imageurl,
    required this.name,
    required this.price,
    required this.url,
  });

  Info copyWith({
    String? imageurl,
    String? name,
    String? price,
    List? url,
  }) {
    return Info(
      imageurl: imageurl ?? this.imageurl,
      name: name ?? this.name,
      price: price ?? this.price,
      url: url ?? this.url,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'imageurl': imageurl,
      'name': name,
      'price': price,
      'url': url,
    };
  }

  factory Info.fromMap(Map<String, dynamic> map) {
    return Info(
      imageurl: map['imageurl'] ?? '',
      name: map['name'] ?? '',
      price: map['price'] ?? '',
      url: List.from(map['url']),
    );
  }

  String toJson() => json.encode(toMap());

  factory Info.fromJson(String source) => Info.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Info(imageurl: $imageurl, name: $name, price: $price, url: $url)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Info &&
        other.imageurl == imageurl &&
        other.name == name &&
        other.price == price &&
        listEquals(other.url, url);
  }

  @override
  int get hashCode {
    return imageurl.hashCode ^ name.hashCode ^ price.hashCode ^ url.hashCode;
  }
}
