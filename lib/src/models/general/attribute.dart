import 'dart:convert';

class AttributesByPtalId {
  final The7? the7;
  final The7? the8;

  AttributesByPtalId({
    this.the7,
    this.the8,
  });

  factory AttributesByPtalId.fromJson(String str) =>
      AttributesByPtalId.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory AttributesByPtalId.fromMap(Map<String, dynamic> json) =>
      AttributesByPtalId(
        the7: json["7"] == null ? null : The7.fromMap(json["7"]),
        the8: json["8"] == null ? null : The7.fromMap(json["8"]),
      );

  Map<String, dynamic> toMap() => {
        "7": the7?.toMap(),
        "8": the8?.toMap(),
      };
}

class The7 {
  final int? id;
  final String? name;
  final String? displayType;
  final List<Value>? values;
  final int? sequence;

  The7({
    this.id,
    this.name,
    this.displayType,
    this.values,
    this.sequence,
  });

  factory The7.fromJson(String str) => The7.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory The7.fromMap(Map<String, dynamic> json) => The7(
        id: json["id"],
        name: json["name"],
        displayType: json["display_type"],
        values: json["values"] == null
            ? []
            : List<Value>.from(json["values"]!.map((x) => Value.fromMap(x))),
        sequence: json["sequence"],
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "name": name,
        "display_type": displayType,
        "values": values == null
            ? []
            : List<dynamic>.from(values!.map((x) => x.toMap())),
        "sequence": sequence,
      };
}

class Value {
  final int? id;
  final String? name;
  final bool? isCustom;
  final bool? htmlColor;
  final bool? image;
  final int? priceExtra;

  Value({
    this.id,
    this.name,
    this.isCustom,
    this.htmlColor,
    this.image,
    this.priceExtra,
  });

  factory Value.fromJson(String str) => Value.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Value.fromMap(Map<String, dynamic> json) => Value(
        id: json["id"],
        name: json["name"],
        isCustom: json["is_custom"],
        htmlColor: json["html_color"],
        image: json["image"],
        priceExtra: json["price_extra"],
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "name": name,
        "is_custom": isCustom,
        "html_color": htmlColor,
        "image": image,
        "price_extra": priceExtra,
      };
}
