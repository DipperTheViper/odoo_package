import 'dart:convert';

import '../../../odoo_package.dart';

class ValidateCouponProgramsRequest {
  final String? model;
  final String? method;
  final List<dynamic>? args;
  final Kwargs? kwargs;

  ValidateCouponProgramsRequest({
    this.model = "pos.order",
    this.method = "validate_coupon_programs",
    this.args = const [
      [],
      ValidateCouponArgs(costumerId: 47,royaltyAmount: 1122),
      []
    ],
    this.kwargs = const Kwargs(),
  });

  factory ValidateCouponProgramsRequest.fromRawJson(String str) =>
      ValidateCouponProgramsRequest.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ValidateCouponProgramsRequest.fromJson(Map<String, dynamic> json) =>
      ValidateCouponProgramsRequest(
        model: json["model"],
        method: json["method"],
        args: json["args"] == null
            ? []
            : List<dynamic>.from(json["args"]!.map((x) => x)),
        kwargs: json["kwargs"] == null ? null : Kwargs.fromJson(json["kwargs"]),
      );

  Map<String, dynamic> toJson() => {
        "model": model,
        "method": method,
        "args": args == null ? [] : List<dynamic>.from(args!.map((x) => x)),
        "kwargs": kwargs?.toJson(),
      };
}

class ValidateCouponArgs {
  final double royaltyAmount;
  final int? costumerId;

  const ValidateCouponArgs({
    required this.royaltyAmount,
    required this.costumerId,
  });

  factory ValidateCouponArgs.fromRawJson(String str) =>
      ValidateCouponArgs.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ValidateCouponArgs.fromJson(Map<String, dynamic> json) {
    print('costttttummmmmmer id');
    print(int.parse(json.keys.toList()[0]));
    print('royalty amount');

    print(int.parse(json.values.toList()[0]));
    return ValidateCouponArgs(
      costumerId: int.parse(json.keys.toList()[0]),
      royaltyAmount: double.parse(json.values.toList()[0]),
    );
  }

  Map<String, dynamic> toJson() => {
        "$costumerId": royaltyAmount,
      };
}
