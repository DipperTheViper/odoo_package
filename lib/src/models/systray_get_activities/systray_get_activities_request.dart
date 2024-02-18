import 'dart:convert';

import '../../../odoo_package.dart';

class SystrayGetActivitiesRequest {
  final String? model;
  final String? method;
  final List<dynamic>? args;
  final Kwargs? kwargs;

  const SystrayGetActivitiesRequest({
    this.model = "res.users",
    this.method = "systray_get_activities",
    this.args = const [],
    this.kwargs = const Kwargs(),
  });

  factory SystrayGetActivitiesRequest.fromRawJson(String str) => SystrayGetActivitiesRequest.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory SystrayGetActivitiesRequest.fromJson(Map<String, dynamic> json) => SystrayGetActivitiesRequest(
    model: json["model"],
    method: json["method"],
    args: json["args"] == null ? [] : List<dynamic>.from(json["args"]!.map((x) => x)),
    kwargs: json["kwargs"] == null ? null : Kwargs.fromJson(json["kwargs"]),
  );

  Map<String, dynamic> toJson() => {
    "model": model,
    "method": method,
    "args": args == null ? [] : List<dynamic>.from(args!.map((x) => x)),
    "kwargs": kwargs?.toJson(),
  };
}
