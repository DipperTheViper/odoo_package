import 'dart:convert';

import '../../../odoo_package.dart';
import '../general/kwargs/kwargs_search_read_costumer.dart';

class SearchReadCostumerRequest {
  final String? model;
  final String? method;
  final List<dynamic> args;
  final KwargsSearchReadCostumer? kwargs;

  SearchReadCostumerRequest({
    this.model = "loyalty.card",
    this.method = "search_read",
    this.args = const [],
    this.kwargs = const KwargsSearchReadCostumer(),
  });

  factory SearchReadCostumerRequest.fromRawJson(String str) =>
      SearchReadCostumerRequest.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory SearchReadCostumerRequest.fromJson(Map<String, dynamic> json) => SearchReadCostumerRequest(
        model: json["model"],
        method: json["method"],
        args: json["args"] == null
            ? []
            : List<dynamic>.from(json["args"]!.map((x) => x)),
        kwargs: json["kwargs"] == null ? null : KwargsSearchReadCostumer.fromJson(json["kwargs"]),
      );

  Map<String, dynamic> toJson() => {
        "model": model,
        "method": method,
        "args": List<dynamic>.from(args.map((x) => x)) ,
        "kwargs": kwargs?.toJson(),
      };
}
