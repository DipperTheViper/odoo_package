import 'dart:convert';

class UseCouponCodeResponse {
  final String? jsonrpc;
  final int? id;
  final UseCouponCodeResponseResult? result;

  UseCouponCodeResponse({
    this.jsonrpc,
    this.id,
    this.result,
  });

  factory UseCouponCodeResponse.fromRawJson(String str) => UseCouponCodeResponse.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory UseCouponCodeResponse.fromJson(Map<String, dynamic> json) => UseCouponCodeResponse(
    jsonrpc: json["jsonrpc"],
    id: json["id"],
    result: json["result"] == null ? null : UseCouponCodeResponseResult.fromJson(json["result"]),
  );

  Map<String, dynamic> toJson() => {
    "jsonrpc": jsonrpc,
    "id": id,
    "result": result?.toJson(),
  };
}

class UseCouponCodeResponseResult {
  final bool? successful;
  final UseCouponCodeResponsePayload? payload;

  UseCouponCodeResponseResult({
    this.successful,
    this.payload,
  });

  factory UseCouponCodeResponseResult.fromRawJson(String str) => UseCouponCodeResponseResult.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory UseCouponCodeResponseResult.fromJson(Map<String, dynamic> json) => UseCouponCodeResponseResult(
    successful: json["successful"],
    payload: json["payload"] == null ? null : UseCouponCodeResponsePayload.fromJson(json["payload"]),
  );

  Map<String, dynamic> toJson() => {
    "successful": successful,
    "payload": payload?.toJson(),
  };
}

class UseCouponCodeResponsePayload {
  final String? errorMessage;

  UseCouponCodeResponsePayload({
    this.errorMessage,
  });

  factory UseCouponCodeResponsePayload.fromRawJson(String str) => UseCouponCodeResponsePayload.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory UseCouponCodeResponsePayload.fromJson(Map<String, dynamic> json) => UseCouponCodeResponsePayload(
    errorMessage: json["error_message"],
  );

  Map<String, dynamic> toJson() => {
    "error_message": errorMessage,
  };
}
