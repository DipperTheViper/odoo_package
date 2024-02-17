import 'dart:convert';

import '../../../odoo_package.dart';

class TryCashInOutRequest {
  final String? model;
  final String? method;
  final List<dynamic>? args;
  final Kwargs? kwargs;

  TryCashInOutRequest({
    this.model ="pos.session",
    this.method = "try_cash_in_out",
    this.args =
     const [[2],"in",1000,"cash in reason test",CashArgClass(formattedAmount: "\$ 10000" ,translatedType: "in" ),],
    //cash out example list : [ [2], "out", 300, "chaaaaash out example", ArgClass(formattedAmount: "\$ 10000" ,translatedType: "out" )]
    this.kwargs = const Kwargs(),
  });

  factory TryCashInOutRequest.fromRawJson(String str) => TryCashInOutRequest.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory TryCashInOutRequest.fromJson(Map<String, dynamic> json) => TryCashInOutRequest(
    model: json["model"],
    method: json["method"],
    args: json["args"] == null ? [] : List<dynamic>.from(json["args"]!.map((x) => x)),
    kwargs: json["kwargs"] == null ? null : Kwargs.fromJson(json["kwargs"]),
  );

  Map<String, dynamic> toJson() => {
    "model": model,
    "method": method,
    "args": args == null ? [] : List<dynamic>.from(args!.map((x) => x)),
    "kwargs": kwargs?.toJson(),
  };
}

class CashArgClass {
  final String? formattedAmount;
  final String? translatedType;

 const CashArgClass({
    this.formattedAmount,
    this.translatedType,
  });

  factory CashArgClass.fromRawJson(String str) => CashArgClass.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory CashArgClass.fromJson(Map<String, dynamic> json) => CashArgClass(
    formattedAmount: json["formattedAmount"],
    translatedType: json["translatedType"],
  );

  Map<String, dynamic> toJson() => {
    "formattedAmount": formattedAmount,
    "translatedType": translatedType,
  };
}
