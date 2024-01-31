import 'dart:convert';

import '../../../odoo_package.dart';

class GetProductInfoRequest {
  final String? model;
  final String? method;
  final List<dynamic> args;
  final Kwargs? kwargs;

  GetProductInfoRequest({
    this.model = "product.product",
    this.method = "get_product_info_pos",
    required this.args,
    this.kwargs = const Kwargs(),
  });

  factory GetProductInfoRequest.fromRawJson(String str) => GetProductInfoRequest.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory GetProductInfoRequest.fromJson(Map<String, dynamic> json) => GetProductInfoRequest(
    model: json["model"],
    method: json["method"],
    args: json["args"] == null ? [] : List<dynamic>.from(json["args"]!.map((x) => x)),
    kwargs: json["kwargs"] == null ? null : Kwargs.fromJson(json["kwargs"]),
  );

  Map<String, dynamic> toJson() => {
    "model": model,
    "method": method,
    "args": List<dynamic>.from(args.map((x) => x)),
    "kwargs": kwargs?.toJson(),
  };
}