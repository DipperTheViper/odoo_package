import 'dart:convert';

import '../general/kwargs/kwargs_paid_order_ids.dart';

class SearchPaidOrderIdsRequest {
  final String? model;
  final String? method;
  final List<dynamic>? args;
  final KwargsPaidOrderIds? kwargs;

  SearchPaidOrderIdsRequest({
    this.model = "pos.order",
    this.method = "search_paid_order_ids",
    this.args = const [],
    this.kwargs = const KwargsPaidOrderIds(),
  });

  factory SearchPaidOrderIdsRequest.fromRawJson(String str) =>
      SearchPaidOrderIdsRequest.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory SearchPaidOrderIdsRequest.fromJson(Map<String, dynamic> json) =>
      SearchPaidOrderIdsRequest(
        model: json["model"],
        method: json["method"],
        args: json["args"] == null
            ? []
            : List<dynamic>.from(json["args"]!.map((x) => x)),
        kwargs: json["kwargs"] == null ? null : KwargsPaidOrderIds.fromJson(json["kwargs"]),
      );

  Map<String, dynamic> toJson() => {
        "model": model,
        "method": method,
        "args": args == null ? [] : List<dynamic>.from(args!.map((x) => x)),
        "kwargs": kwargs?.toJson(),
      };
}
