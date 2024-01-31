import 'dart:convert';

import '../../../odoo_package.dart';

class LogPartnerMessageRequest {
  final String? model;
  final String? method;
  final List<dynamic>? args;
  final Kwargs? kwargs;

  LogPartnerMessageRequest({
    this.model =
    "pos.session",
    this.method = "log_partner_message",
    this.args = const [2, null, "Cash in - Amount: \$ 999.00", "CASH_DRAWER_ACTION"],
    //[pos_session_id , user partner_id , action , message]
    //Cash out example list : [2, null, "Cash out - Amount: $ 300.00", "CASH_DRAWER_ACTION"]
    this.kwargs = const Kwargs(),
  });

  factory LogPartnerMessageRequest.fromRawJson(String str) => LogPartnerMessageRequest.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory LogPartnerMessageRequest.fromJson(Map<String, dynamic> json) => LogPartnerMessageRequest(
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
