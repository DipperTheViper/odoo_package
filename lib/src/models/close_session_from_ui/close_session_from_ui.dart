import 'dart:convert';

import '../../../odoo_package.dart';

class CloseSessionFromUiRequest {
  final String? model;
  final String? method;
  final List<dynamic>? args;
  final Kwargs? kwargs;

  CloseSessionFromUiRequest({
    this.model = "pos.session",
    this.method = "close_session_from_ui",
    this.args = const [2,[[2,0]]],
    this.kwargs =const Kwargs(),
  });

  factory CloseSessionFromUiRequest.fromRawJson(String str) => CloseSessionFromUiRequest.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory CloseSessionFromUiRequest.fromJson(Map<String, dynamic> json) => CloseSessionFromUiRequest(
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