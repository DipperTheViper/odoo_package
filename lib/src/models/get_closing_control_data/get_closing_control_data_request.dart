import 'dart:convert';

import 'package:odoo_package/odoo_package.dart';

class GetClosingControlDataRequest {
  final String? model;
  final String? method;
  final List<List<int>>? args;
  final Kwargs? kwargs;

  GetClosingControlDataRequest({
    this.model = "pos.session",
    this.method = "get_closing_control_data",
    this.args = const [[2]],
    this.kwargs = const Kwargs(),
  });

  factory GetClosingControlDataRequest.fromRawJson(String str) => GetClosingControlDataRequest.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory GetClosingControlDataRequest.fromJson(Map<String, dynamic> json) => GetClosingControlDataRequest(
    model: json["model"],
    method: json["method"],
    args: json["args"] == null ? [] : List<List<int>>.from(json["args"]!.map((x) => List<int>.from(x.map((x) => x)))),
    kwargs: json["kwargs"] == null ? null : Kwargs.fromJson(json["kwargs"]),
  );

  Map<String, dynamic> toJson() => {
    "model": model,
    "method": method,
    "args": args == null ? [] : List<dynamic>.from(args!.map((x) => List<dynamic>.from(x.map((x) => x)))),
    "kwargs": kwargs?.toJson(),
  };
}
