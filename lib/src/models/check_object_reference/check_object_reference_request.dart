import 'dart:convert';

import '../../../odoo_package.dart';

class CheckObjectReferenceRequest {
  final String? model;
  final String? method;
  final List<String>? args;
  final Kwargs? kwargs;

  CheckObjectReferenceRequest({
    this.model = "ir.model.data",
    this.method = "check_object_reference",
    this.args = const ["uom", "product_uom_unit"],
    this.kwargs = const Kwargs(),
  });

  factory CheckObjectReferenceRequest.fromRawJson(String str) => CheckObjectReferenceRequest.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory CheckObjectReferenceRequest.fromJson(Map<String, dynamic> json) => CheckObjectReferenceRequest(
    model: json["model"],
    method: json["method"],
    args: json["args"] == null ? [] : List<String>.from(json["args"]!.map((x) => x)),
    kwargs: json["kwargs"] == null ? null : Kwargs.fromJson(json["kwargs"]),
  );

  Map<String, dynamic> toJson() => {
    "model": model,
    "method": method,
    "args": args == null ? [] : List<dynamic>.from(args!.map((x) => x)),
    "kwargs": kwargs?.toJson(),
  };
}
