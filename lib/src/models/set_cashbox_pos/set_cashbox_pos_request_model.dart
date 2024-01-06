import 'dart:convert';

import '../general/kwargs.dart';

class SetCashboxPosRequestModel {
  final String model;
  final String method;
  final List<dynamic> args;
  final Kwargs kwargs;

  SetCashboxPosRequestModel({
    this.model = "pos.session",
    this.method = "set_cashbox_pos",
    this.args = const [
      [
        15,

        /// second arg should be amount
        /// third should be description
      ],
    ],
    this.kwargs = const Kwargs(),
  });

  factory SetCashboxPosRequestModel.fromRawJson(String str) =>
      SetCashboxPosRequestModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory SetCashboxPosRequestModel.fromJson(Map<String, dynamic> json) =>
      SetCashboxPosRequestModel(
        model: json["model"],
        method: json["method"],
        args: List<List<int>>.from(
            json["args"].map((x) => List<int>.from(x.map((x) => x)))),
        kwargs: Kwargs.fromJson(json["kwargs"]),
      );

  Map<String, dynamic> toJson() => {
        "model": model,
        "method": method,
        "args": List<dynamic>.from(
            args.map((x) => List<dynamic>.from(x.map((x) => x)))),
        "kwargs": kwargs.toJson(),
      };
}
