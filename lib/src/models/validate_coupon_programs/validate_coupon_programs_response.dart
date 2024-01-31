import 'dart:convert';

class ValidateCouponProgramsResponse {
  final String? jsonrpc;
  final int? id;
  final ValidateCouponProgramsResponseResult? result;

  ValidateCouponProgramsResponse({
    this.jsonrpc,
    this.id,
    this.result,
  });

  factory ValidateCouponProgramsResponse.fromRawJson(String str) => ValidateCouponProgramsResponse.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ValidateCouponProgramsResponse.fromJson(Map<String, dynamic> json) => ValidateCouponProgramsResponse(
    jsonrpc: json["jsonrpc"],
    id: json["id"],
    result: json["result"] == null ? null : ValidateCouponProgramsResponseResult.fromJson(json["result"]),
  );

  Map<String, dynamic> toJson() => {
    "jsonrpc": jsonrpc,
    "id": id,
    "result": result?.toJson(),
  };
}

class ValidateCouponProgramsResponseResult {
  final bool? successful;
  final ValidateCouponPayload? payload;

  ValidateCouponProgramsResponseResult({
    this.successful,
    this.payload,
  });

  factory ValidateCouponProgramsResponseResult.fromRawJson(String str) => ValidateCouponProgramsResponseResult.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ValidateCouponProgramsResponseResult.fromJson(Map<String, dynamic> json) => ValidateCouponProgramsResponseResult(
    successful: json["successful"],
    payload: json["payload"] == null ? null : ValidateCouponPayload.fromJson(json["payload"]),
  );

  Map<String, dynamic> toJson() => {
    "successful": successful,
    "payload": payload?.toJson(),
  };
}

class ValidateCouponPayload {
  ValidateCouponPayload();

  factory ValidateCouponPayload.fromRawJson(String str) => ValidateCouponPayload.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ValidateCouponPayload.fromJson(Map<String, dynamic> json) => ValidateCouponPayload(
  );


  Map<String, dynamic> toJson() => {
  };
}
