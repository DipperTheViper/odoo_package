import 'dart:convert';

class ConfirmCouponProgramsResponse {
  final String? jsonrpc;
  final int? id;
  final ConfirmCouponProgramsResponseResult? result;

  ConfirmCouponProgramsResponse({
    this.jsonrpc,
    this.id,
    this.result,
  });

  factory ConfirmCouponProgramsResponse.fromRawJson(String str) => ConfirmCouponProgramsResponse.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ConfirmCouponProgramsResponse.fromJson(Map<String, dynamic> json) => ConfirmCouponProgramsResponse(
    jsonrpc: json["jsonrpc"],
    id: json["id"],
    result: json["result"] == null ? null : ConfirmCouponProgramsResponseResult.fromJson(json["result"]),
  );

  Map<String, dynamic> toJson() => {
    "jsonrpc": jsonrpc,
    "id": id,
    "result": result?.toJson(),
  };
}

class ConfirmCouponProgramsResponseResult {
  final List<CouponUpdate>? couponUpdates;
  final List<ProgramUpdate>? programUpdates;
  final List<NewCouponInfo>? newCouponInfo;
  final CouponReport? couponReport;

  ConfirmCouponProgramsResponseResult({
    this.couponUpdates,
    this.programUpdates,
    this.newCouponInfo,
    this.couponReport,
  });

  factory ConfirmCouponProgramsResponseResult.fromRawJson(String str) => ConfirmCouponProgramsResponseResult.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ConfirmCouponProgramsResponseResult.fromJson(Map<String, dynamic> json) => ConfirmCouponProgramsResponseResult(
    couponUpdates: json["coupon_updates"] == null ? [] : List<CouponUpdate>.from(json["coupon_updates"]!.map((x) => CouponUpdate.fromJson(x))),
    programUpdates: json["program_updates"] == null ? [] : List<ProgramUpdate>.from(json["program_updates"]!.map((x) => ProgramUpdate.fromJson(x))),
    newCouponInfo: json["new_coupon_info"] == null ? [] : List<NewCouponInfo>.from(json["new_coupon_info"]!.map((x) => NewCouponInfo.fromJson(x))),
    couponReport: json["coupon_report"] == null ? null : CouponReport.fromJson(json["coupon_report"]),
  );

  Map<String, dynamic> toJson() => {
    "coupon_updates": couponUpdates == null ? [] : List<dynamic>.from(couponUpdates!.map((x) => x.toJson())),
    "program_updates": programUpdates == null ? [] : List<dynamic>.from(programUpdates!.map((x) => x.toJson())),
    "new_coupon_info": newCouponInfo == null ? [] : List<dynamic>.from(newCouponInfo!.map((x) => x.toJson())),
    "coupon_report": couponReport?.toJson(),
  };
}

class CouponReport {
  CouponReport();

  factory CouponReport.fromRawJson(String str) => CouponReport.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory CouponReport.fromJson(Map<String, dynamic> json) => CouponReport(
  );

  Map<String, dynamic> toJson() => {
  };
}

class CouponUpdate {
  final int? oldId;
  final int? id;
  final double? points;
  final String? code;
  final int? programId;
  final int? partnerId;

  CouponUpdate({
    this.oldId,
    this.id,
    this.points,
    this.code,
    this.programId,
    this.partnerId,
  });

  factory CouponUpdate.fromRawJson(String str) => CouponUpdate.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory CouponUpdate.fromJson(Map<String, dynamic> json) => CouponUpdate(
    oldId: json["old_id"],
    id: json["id"],
    points: json["points"]?.toDouble(),
    code: json["code"],
    programId: json["program_id"],
    partnerId: json["partner_id"],
  );

  Map<String, dynamic> toJson() => {
    "old_id": oldId,
    "id": id,
    "points": points,
    "code": code,
    "program_id": programId,
    "partner_id": partnerId,
  };
}

class NewCouponInfo {
  final String? programName;
  final bool? expirationDate;
  final String? code;

  NewCouponInfo({
    this.programName,
    this.expirationDate,
    this.code,
  });

  factory NewCouponInfo.fromRawJson(String str) => NewCouponInfo.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory NewCouponInfo.fromJson(Map<String, dynamic> json) => NewCouponInfo(
    programName: json["program_name"],
    expirationDate: json["expiration_date"],
    code: json["code"],
  );

  Map<String, dynamic> toJson() => {
    "program_name": programName,
    "expiration_date": expirationDate,
    "code": code,
  };
}

class ProgramUpdate {
  final int? programId;
  final int? usages;

  ProgramUpdate({
    this.programId,
    this.usages,
  });

  factory ProgramUpdate.fromRawJson(String str) => ProgramUpdate.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ProgramUpdate.fromJson(Map<String, dynamic> json) => ProgramUpdate(
    programId: json["program_id"],
    usages: json["usages"],
  );

  Map<String, dynamic> toJson() => {
    "program_id": programId,
    "usages": usages,
  };
}
