import 'dart:convert';

import '../general/kwargs/kwargs_closing_cash.dart';

class PostClosingCashDetailsRequest {
  final String? model;
  final String? method;
  final List<int>? args;
  final KwargsClosingCash? kwargs;

  PostClosingCashDetailsRequest({
    this.model = "pos.session",
    this.method = "post_closing_cash_details",
    this.args = const[2],
    this.kwargs = const KwargsClosingCash(),
  });

  factory PostClosingCashDetailsRequest.fromRawJson(String str) => PostClosingCashDetailsRequest.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory PostClosingCashDetailsRequest.fromJson(Map<String, dynamic> json) => PostClosingCashDetailsRequest(
    model: json["model"],
    method: json["method"],
    args: json["args"] == null ? [] : List<int>.from(json["args"]!.map((x) => x)),
    kwargs: json["kwargs"] == null ? null : KwargsClosingCash.fromJson(json["kwargs"]),
  );

  Map<String, dynamic> toJson() => {
    "model": model,
    "method": method,
    "args": args == null ? [] : List<dynamic>.from(args!.map((x) => x)),
    "kwargs": kwargs?.toJson(),
  };
}
