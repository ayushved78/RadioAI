import 'dart:convert';

import 'package:collection/collection.dart';

class AIRadioList {
  final List<AIRadio> radios;
  AIRadioList({
    this.radios,
  });

  AIRadioList copyWith({
    List<AIRadio> radios,
  }) {
    return AIRadioList(
      radios: radios ?? this.radios,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'radios': radios?.map((x) => x.toMap())?.toList(),
    };
  }

  factory AIRadioList.fromMap(Map<String, dynamic> map) {
    return AIRadioList(
      radios: List<AIRadio>.from(map['radios']?.map((x) => AIRadio.fromMap(x))),
    );
  }

  String toJson() => json.encode(toMap());

  factory AIRadioList.fromJson(String source) =>
      AIRadioList.fromMap(json.decode(source));

  @override
  String toString() => 'AIRadioList(radios: $radios)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    final listEquals = const DeepCollectionEquality().equals;

    return other is AIRadioList && listEquals(other.radios, radios);
  }

  @override
  int get hashCode => radios.hashCode;
}

class AIRadio {
  final int id;
  final int order;
  final String name;
  final String tagline;
  final String color;
  final String desc;
  final String url;
  final String category;
  final String image;
  final String icon;
  final String lang;
  AIRadio({
    this.id,
    this.order,
    this.name,
    this.tagline,
    this.color,
    this.desc,
    this.url,
    this.category,
    this.image,
    this.icon,
    this.lang,
  });

  AIRadio copyWith({
    int id,
    int order,
    String name,
    String tagline,
    String color,
    String desc,
    String url,
    String category,
    String image,
    String icon,
    String lang,
  }) {
    return AIRadio(
      id: id ?? this.id,
      order: order ?? this.order,
      name: name ?? this.name,
      tagline: tagline ?? this.tagline,
      color: color ?? this.color,
      desc: desc ?? this.desc,
      url: url ?? this.url,
      category: category ?? this.category,
      image: image ?? this.image,
      icon: icon ?? this.icon,
      lang: lang ?? this.lang,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'order': order,
      'name': name,
      'tagline': tagline,
      'color': color,
      'desc': desc,
      'url': url,
      'category': category,
      'image': image,
      'icon': icon,
      'lang': lang,
    };
  }

  factory AIRadio.fromMap(Map<String, dynamic> map) {
    return AIRadio(
      id: map['id'],
      order: map['order'],
      name: map['name'],
      tagline: map['tagline'],
      color: map['color'],
      desc: map['desc'],
      url: map['url'],
      category: map['category'],
      image: map['image'],
      icon: map['icon'],
      lang: map['lang'],
    );
  }

  String toJson() => json.encode(toMap());

  factory AIRadio.fromJson(String source) =>
      AIRadio.fromMap(json.decode(source));

  @override
  String toString() {
    return 'AIRadio(id: $id, order: $order, name: $name, tagline: $tagline, color: $color, desc: $desc, url: $url, category: $category, image: $image, icon: $icon, lang: $lang)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is AIRadio &&
        other.id == id &&
        other.order == order &&
        other.name == name &&
        other.tagline == tagline &&
        other.color == color &&
        other.desc == desc &&
        other.url == url &&
        other.category == category &&
        other.image == image &&
        other.icon == icon &&
        other.lang == lang;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        order.hashCode ^
        name.hashCode ^
        tagline.hashCode ^
        color.hashCode ^
        desc.hashCode ^
        url.hashCode ^
        category.hashCode ^
        image.hashCode ^
        icon.hashCode ^
        lang.hashCode;
  }
}
