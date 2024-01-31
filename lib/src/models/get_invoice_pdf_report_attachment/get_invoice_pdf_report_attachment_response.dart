import 'dart:convert';

class GetInvoicePdfReportAttachmentResponse {
  final String? jsonrpc;
  final int? id;
  final List<String>? result;

  GetInvoicePdfReportAttachmentResponse({
    this.jsonrpc,
    this.id,
    this.result,
  });

  factory GetInvoicePdfReportAttachmentResponse.fromRawJson(String str) => GetInvoicePdfReportAttachmentResponse.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory GetInvoicePdfReportAttachmentResponse.fromJson(Map<String, dynamic> json) => GetInvoicePdfReportAttachmentResponse(
    jsonrpc: json["jsonrpc"],
    id: json["id"],
    result: json["result"] == null ? [] : List<String>.from(json["result"]!.map((x) => x)),
  );

  Map<String, dynamic> toJson() => {
    "jsonrpc": jsonrpc,
    "id": id,
    "result": result == null ? [] : List<dynamic>.from(result!.map((x) => x)),
  };
}
