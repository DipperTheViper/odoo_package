import 'dart:convert';

import '../../../odoo_package.dart';

class GetPosUiProductPricelistItemByProductRequest {
  final String? model;
  final String? method;
  final List<dynamic>? args;
  final Kwargs? kwargs;

  GetPosUiProductPricelistItemByProductRequest({
    this.model = "pos.session",
    this.method = "get_pos_ui_product_pricelist_item_by_product",
    // second list<int> values comes from search method response
    this.args = const
    [2, [16, 16, 17, 5], [23, 24, 25, 5]],
    this.kwargs = const Kwargs(),
  });

  factory GetPosUiProductPricelistItemByProductRequest.fromRawJson(String str) => GetPosUiProductPricelistItemByProductRequest.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory GetPosUiProductPricelistItemByProductRequest.fromJson(Map<String, dynamic> json) => GetPosUiProductPricelistItemByProductRequest(
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
