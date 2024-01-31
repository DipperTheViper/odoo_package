import 'dart:convert';

class SearchPaidOrderIdsResponse {
  final String? jsonrpc;
  final int? id;
  final SearchPaidOrderIdsResponseResult? result;

  SearchPaidOrderIdsResponse({
    this.jsonrpc,
    this.id,
    this.result,
  });

  factory SearchPaidOrderIdsResponse.fromRawJson(String str) => SearchPaidOrderIdsResponse.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory SearchPaidOrderIdsResponse.fromJson(Map<String, dynamic> json) => SearchPaidOrderIdsResponse(
    jsonrpc: json["jsonrpc"],
    id: json["id"],
    result: json["result"] == null ? null : SearchPaidOrderIdsResponseResult.fromJson(json["result"]),
  );

  Map<String, dynamic> toJson() => {
    "jsonrpc": jsonrpc,
    "id": id,
    "result": result?.toJson(),
  };
}

class SearchPaidOrderIdsResponseResult {
  final List<List<dynamic>>? ordersInfo;
  final int? totalCount;

  SearchPaidOrderIdsResponseResult({
    this.ordersInfo,
    this.totalCount,
  });

  factory SearchPaidOrderIdsResponseResult.fromRawJson(String str) => SearchPaidOrderIdsResponseResult.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory SearchPaidOrderIdsResponseResult.fromJson(Map<String, dynamic> json) => SearchPaidOrderIdsResponseResult(
    ordersInfo: json["ordersInfo"] == null ? [] : List<List<dynamic>>.from(json["ordersInfo"]!.map((x) => List<dynamic>.from(x.map((x) => x)))),
    totalCount: json["totalCount"],
  );

  Map<String, dynamic> toJson() => {
    "ordersInfo": ordersInfo == null ? [] : List<dynamic>.from(ordersInfo!.map((x) => List<dynamic>.from(x.map((x) => x)))),
    "totalCount": totalCount,
  };
}
