import 'dart:convert';

import '../../../odoo_package.dart';

class UpdateClosingControlStateSessionRequest {
  final String? model;
  final String? method;
  final List<dynamic>? args;
  final Kwargs? kwargs;

  UpdateClosingControlStateSessionRequest({
    this.model = "pos.session",
    this.method = "update_closing_control_state_session",
    this.args = const [
      2,
      r"Money details: \n  - 1 x $ 0.50\n  - 1 x $ 1.00\n  - 1 x $ 2.00\n  - 1 x $ 5.00\n  - 1 x $ 10.00\n  - 1 x $ 20.00\n  - 1 x $ 50.00\n  - 1 x $ 100.00\n  - 10 x $ 200.00\n"
    ],
    this.kwargs = const Kwargs(),
  });

  factory UpdateClosingControlStateSessionRequest.fromRawJson(String str) =>
      UpdateClosingControlStateSessionRequest.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory UpdateClosingControlStateSessionRequest.fromJson(
      Map<String, dynamic> json) =>
      UpdateClosingControlStateSessionRequest(
        model: json["model"],
        method: json["method"],
        args: json["args"] == null ? [] : List<dynamic>.from(
            json["args"]!.map((x) => x)),
        kwargs: json["kwargs"] == null ? null : Kwargs.fromJson(json["kwargs"]),
      );

  Map<String, dynamic> toJson() =>
      {
        "model": model,
        "method": method,
        "args": args == null ? [] : List<dynamic>.from(args!.map((x) => x)),
        "kwargs": kwargs?.toJson(),
      };
}