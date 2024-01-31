import 'dart:convert';

class CreatePaymentFromUiResponse {
  final String? jsonrpc;
  final int? id;
  final List<CreatePaymentFromUiRequestResult>? result;

  CreatePaymentFromUiResponse({
    this.jsonrpc,
    this.id,
    this.result,
  });

  factory CreatePaymentFromUiResponse.fromRawJson(String str) => CreatePaymentFromUiResponse.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory CreatePaymentFromUiResponse.fromJson(Map<String, dynamic> json) => CreatePaymentFromUiResponse(
    jsonrpc: json["jsonrpc"],
    id: json["id"],
    result: json["result"] == null ? [] : List<CreatePaymentFromUiRequestResult>.from(json["result"]!.map((x) => CreatePaymentFromUiRequestResult.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "jsonrpc": jsonrpc,
    "id": id,
    "result": result == null ? [] : List<dynamic>.from(result!.map((x) => x.toJson())),
  };
}

class CreatePaymentFromUiRequestResult {
  final int? id;
  final String? posReference;
  final int? accountMove;

  CreatePaymentFromUiRequestResult({
    this.id,
    this.posReference,
    this.accountMove,
  });

  factory CreatePaymentFromUiRequestResult.fromRawJson(String str) => CreatePaymentFromUiRequestResult.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory CreatePaymentFromUiRequestResult.fromJson(Map<String, dynamic> json) => CreatePaymentFromUiRequestResult(
    id: json["id"],
    posReference: json["pos_reference"],
    accountMove: json["account_move"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "pos_reference": posReference,
    "account_move": accountMove,
  };
}
