import 'dart:convert';

import '../../../odoo_package.dart';

class UseCouponCodeRequest {
  final String? model;
  final String? method;
  final List<dynamic>? args;
  final Kwargs? kwargs;

  const UseCouponCodeRequest({
    this.model = "pos.config",
    this.method = "use_coupon_code",
    this.args = const [
      [1],
      "0101001",
      "2024-01-14T16:27:35.511+03:30",
      57,
      false
    ],
    this.kwargs = const Kwargs(),
  });

  factory UseCouponCodeRequest.fromRawJson(String str) =>
      UseCouponCodeRequest.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory UseCouponCodeRequest.fromJson(Map<String, dynamic> json) =>
      UseCouponCodeRequest(
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

// class UseCouponCodeArgs {
//   final String? couponCode;
//   final String? couponUsedDateTime;
//   final int? costumerId;
//   final bool? unknown;
//
//   const UseCouponCodeArgs({
//     this.couponCode = "123123123123",
//     this.couponUsedDateTime = "2024-01-14T16:27:35.511+03:30",
//     this.costumerId = 60,
//     this.unknown = false,
//   });
//
//   factory UseCouponCodeArgs.fromRawJson(String str) =>
//       UseCouponCodeArgs.fromJson(json.decode(str));
//
//   String toRawJson() => json.encode(toJson());
//
//   factory UseCouponCodeArgs.fromJson(Map<String, dynamic> json) =>
//       UseCouponCodeArgs(
//         couponCode: json["couponCode"],
//         couponUsedDateTime: json["couponUsedDateTime"] == null
//             ? null
//             : json["couponUsedDateTime"],
//
//         // couponUsedDateTime: json["couponUsedDateTime"] == null ? null : DateTime.parse(json["couponUsedDateTime"]),
//         costumerId: json["costumerId"] == false ? 0 : json["costumerId"],
//         unknown: json["unknown"],
//       );
//
//   Map<String, dynamic> toJson() => {
//         "couponCode": couponCode,
//         "couponUsedDateTime": couponUsedDateTime,
//         // "couponUsedDateTime": couponUsedDateTime?.toIso8601String(),
//         "costumerId": costumerId == null ? false : costumerId,
//         "unknown": unknown,
//       };
// }
