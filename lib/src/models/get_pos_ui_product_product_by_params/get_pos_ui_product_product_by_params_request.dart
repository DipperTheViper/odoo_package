import 'dart:convert';

import '../../../odoo_package.dart';

class GetPosUiProductProductByParamsRequest {
  final String? model;
  final String? method;
  final List<dynamic>? args;
  final Kwargs? kwargs;

  GetPosUiProductProductByParamsRequest({
    this.model = "pos.session",
    this.method = "get_pos_ui_product_product_by_params",
    //the list<int> inside domain main method including numbers is filled using search api results
    this.args = const [
      2,
      PosArgClass(domain: [
        [
          "id",
          "in",
          [23, 24, 25, 5],
        ]
      ])
    ],
    this.kwargs = const Kwargs(),
  });

  factory GetPosUiProductProductByParamsRequest.fromRawJson(String str) =>
      GetPosUiProductProductByParamsRequest.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory GetPosUiProductProductByParamsRequest.fromJson(
          Map<String, dynamic> json) =>
      GetPosUiProductProductByParamsRequest(
        model: json["model"],
        method: json["method"],
        args: json["args"] == null
            ? []
            : List<dynamic>.from(json["args"]!.map((x) => x)),
        kwargs: json["kwargs"] == null ? null : Kwargs.fromJson(json["kwargs"]),
      );

  Map<String, dynamic> toJson() => {
        "model": model,
        "method": method,
        "args": args == null ? [] : List<dynamic>.from(args!.map((x) => x)),
        "kwargs": kwargs?.toJson(),
      };
}

class PosArgClass {
  final List<List<dynamic>>? domain;

  const PosArgClass({
    this.domain,
  });

  factory PosArgClass.fromRawJson(String str) =>
      PosArgClass.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory PosArgClass.fromJson(Map<String, dynamic> json) => PosArgClass(
        domain: json["domain"] == null
            ? []
            : List<List<dynamic>>.from(json["domain"]!
                .map((x) => List<dynamic>.from(x.map((x) => x)))),
      );

  Map<String, dynamic> toJson() => {
        "domain": domain == null
            ? []
            : List<dynamic>.from(
                domain!.map((x) => List<dynamic>.from(x.map((x) => x)))),
      };
}
