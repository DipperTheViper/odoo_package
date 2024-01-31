import 'dart:convert';

import '../general/kwargs/kwargs.dart';

class SetCashboxPosRequestModel {
  final String model;
  final String method;
  final List<dynamic> args;
  final Kwargs kwargs;

  SetCashboxPosRequestModel({
    this.model = "pos.session",
    this.method = "set_cashbox_pos",
    this.args = const [
    //we dont know what's this
      6,
      // this is total amount
      5482.6,
      // starting money details
      "Money details: \n  - 1 x \$ 0.01\n  - 2 x \$ 0.02\n  - 3 x \$ 0.05\n  - 4 x \$ 0.10\n  - 5 x \$ 0.20\n  - 6 x \$ 0.25\n  - 7 x \$ 0.50\n  - 8 x \$ 1.00\n  - 9 x \$ 2.00\n  - 10 x \$ 5.00\n  - 11 x \$ 10.00\n  - 12 x \$ 20.00\n  - 13 x \$ 50.00\n  - 14 x \$ 100.00\n  - 15 x \$ 200.00\n"
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
        "args": List<dynamic>.from(args.map((x) => x)),
        "kwargs": kwargs.toJson(),
      };
}
