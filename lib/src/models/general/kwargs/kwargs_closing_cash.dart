
import 'dart:convert';

import '../../../../odoo_package.dart';

class KwargsClosingCash extends Kwargs{
  final double? countedCash;


 const KwargsClosingCash({
    super.context,
    this.countedCash = 1234.0,

  });

  factory KwargsClosingCash.fromRawJson(String str) => KwargsClosingCash.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory KwargsClosingCash.fromJson(Map<String, dynamic> json) => KwargsClosingCash(
    countedCash: json["counted_cash"]?.toDouble(),
    context: json["context"] == null ? null : Context.fromJson(json["context"]),
  );

  Map<String, dynamic> toJson() => {
    "counted_cash": countedCash,
    "context": context?.toJson(),
  };
}