import 'dart:convert';

class SearchResponse {
  final String? jsonrpc;
  final int? id;
  final List<int>? result;

  SearchResponse({
    this.jsonrpc,
    this.id,
    this.result,
  });

  factory SearchResponse.fromRawJson(String str) => SearchResponse.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory SearchResponse.fromJson(Map<String, dynamic> json) => SearchResponse(
    jsonrpc: json["jsonrpc"],
    id: json["id"],
    result: json["result"] == null ? [] : List<int>.from(json["result"]!.map((x) => x)),
  );

  Map<String, dynamic> toJson() => {
    "jsonrpc": jsonrpc,
    "id": id,
    "result": result == null ? [] : List<dynamic>.from(result!.map((x) => x)),
  };
}