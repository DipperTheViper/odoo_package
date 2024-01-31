import 'dart:convert';

class CheckObjectReferenceResponse {
  final String? jsonrpc;
  final int? id;
  final List<dynamic>? result;

  CheckObjectReferenceResponse({
    this.jsonrpc,
    this.id,
    this.result,
  });

  factory CheckObjectReferenceResponse.fromRawJson(String str) => CheckObjectReferenceResponse.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory CheckObjectReferenceResponse.fromJson(Map<String, dynamic> json) => CheckObjectReferenceResponse(
    jsonrpc: json["jsonrpc"],
    id: json["id"],
    result: json["result"] == null ? [] : List<dynamic>.from(json["result"]!.map((x) => x)),
  );

  Map<String, dynamic> toJson() => {
    "jsonrpc": jsonrpc,
    "id": id,
    "result": result == null ? [] : List<dynamic>.from(result!.map((x) => x)),
  };
}