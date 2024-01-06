import 'dart:convert';

class UomUom {
  final int? id;
  final String? name;
  final List<dynamic>? categoryId;
  final double? factor;
  final double? factorInv;
  final double? rounding;
  final bool? active;
  final String? uomType;
  final double? ratio;
  final int? color;
  final String? displayName;
  final List<dynamic>? createUid;
  final String? createDate;
  final List<dynamic>? writeUid;
  final String? writeDate;
  final String? fiscalCountryCodes;
  final dynamic timesheetWidget;
  final bool? isPosGroupable;

  UomUom({
    this.id,
    this.name,
    this.categoryId,
    this.factor,
    this.factorInv,
    this.rounding,
    this.active,
    this.uomType,
    this.ratio,
    this.color,
    this.displayName,
    this.createUid,
    this.createDate,
    this.writeUid,
    this.writeDate,
    this.fiscalCountryCodes,
    this.timesheetWidget,
    this.isPosGroupable,
  });

  factory UomUom.fromJson(String str) => UomUom.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory UomUom.fromMap(Map<String, dynamic> json) => UomUom(
        id: json["id"],
        name: json["name"],
        categoryId: json["category_id"] == null
            ? []
            : List<dynamic>.from(json["category_id"]!.map((x) => x)),
        factor: json["factor"]?.toDouble(),
        factorInv: json["factor_inv"]?.toDouble(),
        rounding: json["rounding"]?.toDouble(),
        active: json["active"],
        uomType: json["uom_type"],
        ratio: json["ratio"]?.toDouble(),
        color: json["color"],
        displayName: json["display_name"],
        createUid: json["create_uid"] == null
            ? []
            : List<dynamic>.from(json["create_uid"]!.map((x) => x)),
        createDate: json["create_date"],
        writeUid: json["write_uid"] == null
            ? []
            : List<dynamic>.from(json["write_uid"]!.map((x) => x)),
        writeDate: json["write_date"],
        fiscalCountryCodes: json["fiscal_country_codes"],
        timesheetWidget: json["timesheet_widget"],
        isPosGroupable: json["is_pos_groupable"],
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "name": name,
        "category_id": categoryId == null
            ? []
            : List<dynamic>.from(categoryId!.map((x) => x)),
        "factor": factor,
        "factor_inv": factorInv,
        "rounding": rounding,
        "active": active,
        "uom_type": uomType,
        "ratio": ratio,
        "color": color,
        "display_name": displayName,
        "create_uid": createUid == null
            ? []
            : List<dynamic>.from(createUid!.map((x) => x)),
        "create_date": createDate,
        "write_uid":
            writeUid == null ? [] : List<dynamic>.from(writeUid!.map((x) => x)),
        "write_date": writeDate,
        "fiscal_country_codes": fiscalCountryCodes,
        "timesheet_widget": timesheetWidget,
        "is_pos_groupable": isPosGroupable,
      };
}
