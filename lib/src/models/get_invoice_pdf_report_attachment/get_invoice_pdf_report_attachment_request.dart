import 'dart:convert';

import '../../../odoo_package.dart';

class GetInvoicePdfReportAttachmentRequest {
  final String? model;
  final String? method;
  final List<List<int>>? args;
  final Kwargs? kwargs;

  GetInvoicePdfReportAttachmentRequest({
    this.model = "account.move",
    this.method = "get_invoice_pdf_report_attachment",
    /// in this method the args value is a list<list<CreatePaymentFromUiResponse["account_move"]>> which is a int number
    this.args = const [[45]],
    this.kwargs =const Kwargs(),
  });

  factory GetInvoicePdfReportAttachmentRequest.fromRawJson(String str) => GetInvoicePdfReportAttachmentRequest.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory GetInvoicePdfReportAttachmentRequest.fromJson(Map<String, dynamic> json) => GetInvoicePdfReportAttachmentRequest(
    model: json["model"],
    method: json["method"],
    args: json["args"] == null ? [] : List<List<int>>.from(json["args"]!.map((x) => List<int>.from(x.map((x) => x)))),
    kwargs: json["kwargs"] == null ? null : Kwargs.fromJson(json["kwargs"]),
  );

  Map<String, dynamic> toJson() => {
    "model": model,
    "method": method,
    "args": args == null ? [] : List<dynamic>.from(args!.map((x) => List<dynamic>.from(x.map((x) => x)))),
    "kwargs": kwargs?.toJson(),
  };
}
