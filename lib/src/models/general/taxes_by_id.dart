import 'dart:convert';

import 'account_tax.dart';

class TaxesById {
  final AccountTax? the1;
  final AccountTax? the2;
  final AccountTax? the3;

  TaxesById({
    this.the1,
    this.the2,
    this.the3,
  });

  factory TaxesById.fromJson(String str) => TaxesById.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory TaxesById.fromMap(Map<String, dynamic> json) => TaxesById(
        the1: json["1"] == null ? null : AccountTax.fromMap(json["1"]),
        the2: json["2"] == null ? null : AccountTax.fromMap(json["2"]),
        the3: json["3"] == null ? null : AccountTax.fromMap(json["3"]),
      );

  Map<String, dynamic> toMap() => {
        "1": the1?.toMap(),
        "2": the2?.toMap(),
        "3": the3?.toMap(),
      };
}
