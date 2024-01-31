import 'dart:convert';

import '../../../odoo_package.dart';
import 'costumer_creation_fields.dart';

class CreateCostumerFromUiRequest {
  final String? model;
  final String? method;
  final List<CostumerCreationFields> args;
  final Kwargs? kwargs;

  CreateCostumerFromUiRequest({
    this.model = "res.partner",
    this.method = "create_from_ui",
    required this.args,
    this.kwargs = const Kwargs(),
  });

  factory CreateCostumerFromUiRequest.fromRawJson(String str) =>
      CreateCostumerFromUiRequest.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory CreateCostumerFromUiRequest.fromJson(Map<String, dynamic> json) =>
      CreateCostumerFromUiRequest(
        model: json["model"],
        method: json["method"],
        args: json["args"] == null
            ? []
            : List<CostumerCreationFields>.from(json["args"]!.map((x) => x)),
        kwargs: json["kwargs"] == null ? null : Kwargs.fromJson(json["kwargs"]),
      );

  Map<String, dynamic> toJson() => {
        "model": model,
        "method": method,
        "args": args == null ? [] : List<dynamic>.from(args.map((x) => x)),
        "kwargs": kwargs?.toJson(),
      };
}
