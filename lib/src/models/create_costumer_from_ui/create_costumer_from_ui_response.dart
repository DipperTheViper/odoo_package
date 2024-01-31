import 'dart:convert';

class CreateCostumerFromUiResponse {
  final String? jsonrpc;
  final int? id;
  final int? result;

  CreateCostumerFromUiResponse({
    this.jsonrpc,
    this.id,
    this.result,
  });

  factory CreateCostumerFromUiResponse.fromRawJson(String str) => CreateCostumerFromUiResponse.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory CreateCostumerFromUiResponse.fromJson(Map<String, dynamic> json) => CreateCostumerFromUiResponse(
    jsonrpc: json["jsonrpc"],
    id: json["id"],
    result: json["result"],
  );

  Map<String, dynamic> toJson() => {
    "jsonrpc": jsonrpc,
    "id": id,
    "result": result,
  };
}
