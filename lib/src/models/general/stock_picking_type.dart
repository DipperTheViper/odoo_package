import 'dart:convert';

class StockPickingType {
  final int? id;
  final bool? useCreateLots;
  final bool? useExistingLots;

  StockPickingType({
    this.id,
    this.useCreateLots,
    this.useExistingLots,
  });

  factory StockPickingType.fromJson(String str) =>
      StockPickingType.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory StockPickingType.fromMap(Map<String, dynamic> json) =>
      StockPickingType(
        id: json["id"],
        useCreateLots: json["use_create_lots"],
        useExistingLots: json["use_existing_lots"],
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "use_create_lots": useCreateLots,
        "use_existing_lots": useExistingLots,
      };
}
