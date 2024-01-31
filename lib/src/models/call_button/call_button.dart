// this api is called when we create or open exsting session

import 'dart:convert';

import '../../../odoo_package.dart';

class CallButton {
  final List<List<int>>? args;
  final Kwargs? kwargs;
  final String? method;
  final String? model;

  CallButton({
    this.args = const[[1]],
    this.kwargs = const Kwargs(),
    this.method = "open_ui",
    this.model = "pos.config",
  });

  factory CallButton.fromRawJson(String str) => CallButton.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory CallButton.fromJson(Map<String, dynamic> json) => CallButton(
    args: json["args"] == null ? [] : List<List<int>>.from(json["args"]!.map((x) => List<int>.from(x.map((x) => x)))),
    kwargs: json["kwargs"] == null ? null : Kwargs.fromJson(json["kwargs"]),
    method: json["method"],
    model: json["model"],
  );

  Map<String, dynamic> toJson() => {
    "args": args == null ? [] : List<dynamic>.from(args!.map((x) => List<dynamic>.from(x.map((x) => x)))),
    "kwargs": kwargs?.toJson(),
    "method": method,
    "model": model,
  };
}