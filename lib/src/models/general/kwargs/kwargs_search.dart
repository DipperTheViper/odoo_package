import 'dart:convert';

import '../../../../odoo_package.dart';

class KwargsSearch extends Kwargs {
  final int? offset;
  final int? limit;

 const  KwargsSearch({
    super.context,
    this.offset = 0,
    this.limit = 30,
  });

  factory KwargsSearch.fromRawJson(String str) => KwargsSearch.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory KwargsSearch.fromJson(Map<String, dynamic> json) => KwargsSearch(
    offset: json["offset"],
    limit: json["limit"],
    context: json["context"] == null ? null : Context.fromJson(json["context"]),
  );

  @override
  Map<String, dynamic> toJson() => {
    "offset": offset,
    "limit": limit,
    "context": context?.toJson(),
  };
}