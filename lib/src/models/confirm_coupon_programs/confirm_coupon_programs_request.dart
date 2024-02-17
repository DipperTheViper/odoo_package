import 'dart:convert';

import '../../../odoo_package.dart';

class ConfirmCouponProgramsRequest {
  final String? model;
  final String? method;
  final List<dynamic>? args;
  final Kwargs? kwargs;

  ConfirmCouponProgramsRequest({
    this.model = "pos.order",
    this.method = "confirm_coupon_programs",
    //the number first argument of this list goes up by one each time we call it .
    this.args = const [12, CouponArgClass(the3: The36(points:1,programId:5,couponId:-1,appliedRules:[5]),the36: The36(points:1955,programId:6,couponId:36,partnerId:51))],
    this.kwargs = const Kwargs(),
  });

  factory ConfirmCouponProgramsRequest.fromRawJson(String str) => ConfirmCouponProgramsRequest.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ConfirmCouponProgramsRequest.fromJson(Map<String, dynamic> json) => ConfirmCouponProgramsRequest(
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

class CouponArgClass {
  final The36? the36;
  final The36? the3;

 const CouponArgClass({
    this.the36,
    this.the3,
  });

  factory CouponArgClass.fromRawJson(String str) => CouponArgClass.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory CouponArgClass.fromJson(Map<String, dynamic> json) => CouponArgClass(
    the36: json["36"] == null ? null : The36.fromJson(json["36"]),
    the3: json["-3"] == null ? null : The36.fromJson(json["-3"]),
  );

  Map<String, dynamic> toJson() => {
    "36": the36?.toJson(),
    "-3": the3?.toJson(),
  };
}

class The36 {
  final int? points;
  final int? programId;
  final int? couponId;
  final List<int>? appliedRules;
  final int? partnerId;

  const The36({
    this.points,
    this.programId,
    this.couponId,
    this.appliedRules,
    this.partnerId,
  });

  factory The36.fromRawJson(String str) => The36.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory The36.fromJson(Map<String, dynamic> json) => The36(
    points: json["points"],
    programId: json["program_id"],
    couponId: json["coupon_id"],
    appliedRules: json["appliedRules"] == null ? [] : List<int>.from(json["appliedRules"]!.map((x) => x)),
    partnerId: json["partner_id"],
  );

  Map<String, dynamic> toJson() => {
    "points": points,
    "program_id": programId,
    "coupon_id": couponId,
    "appliedRules": appliedRules == null ? [] : List<dynamic>.from(appliedRules!.map((x) => x)),
    "partner_id": partnerId,
  };
}