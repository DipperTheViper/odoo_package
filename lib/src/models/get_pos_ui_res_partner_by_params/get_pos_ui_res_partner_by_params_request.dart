import 'dart:convert';

import 'package:odoo_package/odoo_package.dart';

class GetPosUiResPartnerByParamsRequest {
  final String? model;
  final String? method;
  final List<dynamic>? args;
  final Kwargs? kwargs;

  GetPosUiResPartnerByParamsRequest({
    this.model ="pos.session",
    this.method =
    "get_pos_ui_res_partner_by_params",
    this.args = const [
      //first list data is pos_session_id
      [2], { "domain": [["write_date", ">", "2024-01-13 14:03:13"]]}],
    this.kwargs = const Kwargs(),
  });

  factory GetPosUiResPartnerByParamsRequest.fromRawJson(String str) => GetPosUiResPartnerByParamsRequest.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory GetPosUiResPartnerByParamsRequest.fromJson(Map<String, dynamic> json) => GetPosUiResPartnerByParamsRequest(
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
