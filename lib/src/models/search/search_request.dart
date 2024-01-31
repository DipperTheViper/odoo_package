import 'dart:convert';

import '../general/kwargs/kwargs_search.dart';

class SearchRequest {
  final String? model;
  final String? method;
  final List<List<dynamic>>? args;
  final KwargsSearch? kwargs;

  SearchRequest({
    this.model = "product.product",
    this.method = "search",
    //for example we searched for chair
    // this api we be called when you click on search more button in search screen
    this.args = const [
      [
        "&",
        ["available_in_pos", "=", true],
        "|",
        "|",
        ["name", "ilike", "chair"],
        ["default_code", "ilike", "chair"],
        ["barcode", "ilike", "chair"]
      ]
    ],
    this.kwargs = const KwargsSearch(),
  });

  factory SearchRequest.fromRawJson(String str) => SearchRequest.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory SearchRequest.fromJson(Map<String, dynamic> json) => SearchRequest(
        model: json["model"],
        method: json["method"],
        args: json["args"] == null
            ? []
            : List<List<dynamic>>.from(
                json["args"]!.map((x) => List<dynamic>.from(x.map((x) => x)))),
        kwargs: json["kwargs"] == null ? null : KwargsSearch.fromJson(json["kwargs"]),
      );

  Map<String, dynamic> toJson() => {
        "model": model,
        "method": method,
        "args": args == null
            ? []
            : List<dynamic>.from(
                args!.map((x) => List<dynamic>.from(x.map((x) => x)))),
        "kwargs": kwargs?.toJson(),
      };
}
