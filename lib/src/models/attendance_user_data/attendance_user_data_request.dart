import 'dart:convert';

class AttendanceUserDataRequest {
  final int? id;
  final String? jsonrpc;
  final String? method;
  final Params? params;

  AttendanceUserDataRequest({
    this.id = 1,
    this.jsonrpc = "2.0",
    this.method = 'call',
    this.params = const Params(),
  });

  factory AttendanceUserDataRequest.fromRawJson(String str) => AttendanceUserDataRequest.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory AttendanceUserDataRequest.fromJson(Map<String, dynamic> json) => AttendanceUserDataRequest(
    id: json["id"],
    jsonrpc: json["jsonrpc"],
    method: json["method"],
    params: json["params"] == null ? null : Params.fromJson(json["params"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "jsonrpc": jsonrpc,
    "method": method,
    "params": params?.toJson(),
  };
}

class Params {
const  Params();

  factory Params.fromRawJson(String str) => Params.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Params.fromJson(Map<String, dynamic> json) => Params(
  );

  Map<String, dynamic> toJson() => {
  };
}
