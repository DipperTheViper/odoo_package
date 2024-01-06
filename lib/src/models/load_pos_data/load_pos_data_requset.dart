import 'dart:convert';

import '../general/kwargs.dart';


class LoadPosDataRequestModel {
  final String model;
  final String method;
  final List<dynamic> args;
  final Kwargs kwargs;

  LoadPosDataRequestModel({
    this.model = "pos.session",
    this.method = "load_pos_data",
    this.args = const [
      [
        10,
      ],
    ],
    this.kwargs = const Kwargs(),
  });

  factory LoadPosDataRequestModel.fromRawJson(String str) =>
      LoadPosDataRequestModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory LoadPosDataRequestModel.fromJson(Map<String, dynamic> json) =>
      LoadPosDataRequestModel(
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
