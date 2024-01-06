import 'dart:convert';

class UnitsById {
  final The1? the1;
  final The1? the2;
  final The3? the3;
  final The3? the4;
  final The1? the5;
  final The1? the6;
  final The1? the7;
  final The1? the8;
  final The1? the9;
  final The1? the10;
  final The1? the11;
  final The1? the12;
  final The1? the13;
  final The1? the14;
  final The1? the15;
  final The1? the16;
  final The1? the17;
  final The1? the18;
  final The1? the19;
  final The1? the20;
  final The1? the21;
  final The1? the22;
  final The1? the23;
  final The1? the24;
  final The1? the25;
  final The1? the26;

  UnitsById({
    this.the1,
    this.the2,
    this.the3,
    this.the4,
    this.the5,
    this.the6,
    this.the7,
    this.the8,
    this.the9,
    this.the10,
    this.the11,
    this.the12,
    this.the13,
    this.the14,
    this.the15,
    this.the16,
    this.the17,
    this.the18,
    this.the19,
    this.the20,
    this.the21,
    this.the22,
    this.the23,
    this.the24,
    this.the25,
    this.the26,
  });

  factory UnitsById.fromJson(String str) => UnitsById.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory UnitsById.fromMap(Map<String, dynamic> json) => UnitsById(
        the1: json["1"] == null ? null : The1.fromMap(json["1"]),
        the2: json["2"] == null ? null : The1.fromMap(json["2"]),
        the3: json["3"] == null ? null : The3.fromMap(json["3"]),
        the4: json["4"] == null ? null : The3.fromMap(json["4"]),
        the5: json["5"] == null ? null : The1.fromMap(json["5"]),
        the6: json["6"] == null ? null : The1.fromMap(json["6"]),
        the7: json["7"] == null ? null : The1.fromMap(json["7"]),
        the8: json["8"] == null ? null : The1.fromMap(json["8"]),
        the9: json["9"] == null ? null : The1.fromMap(json["9"]),
        the10: json["10"] == null ? null : The1.fromMap(json["10"]),
        the11: json["11"] == null ? null : The1.fromMap(json["11"]),
        the12: json["12"] == null ? null : The1.fromMap(json["12"]),
        the13: json["13"] == null ? null : The1.fromMap(json["13"]),
        the14: json["14"] == null ? null : The1.fromMap(json["14"]),
        the15: json["15"] == null ? null : The1.fromMap(json["15"]),
        the16: json["16"] == null ? null : The1.fromMap(json["16"]),
        the17: json["17"] == null ? null : The1.fromMap(json["17"]),
        the18: json["18"] == null ? null : The1.fromMap(json["18"]),
        the19: json["19"] == null ? null : The1.fromMap(json["19"]),
        the20: json["20"] == null ? null : The1.fromMap(json["20"]),
        the21: json["21"] == null ? null : The1.fromMap(json["21"]),
        the22: json["22"] == null ? null : The1.fromMap(json["22"]),
        the23: json["23"] == null ? null : The1.fromMap(json["23"]),
        the24: json["24"] == null ? null : The1.fromMap(json["24"]),
        the25: json["25"] == null ? null : The1.fromMap(json["25"]),
        the26: json["26"] == null ? null : The1.fromMap(json["26"]),
      );

  Map<String, dynamic> toMap() => {
        "1": the1?.toMap(),
        "2": the2?.toMap(),
        "3": the3?.toMap(),
        "4": the4?.toMap(),
        "5": the5?.toMap(),
        "6": the6?.toMap(),
        "7": the7?.toMap(),
        "8": the8?.toMap(),
        "9": the9?.toMap(),
        "10": the10?.toMap(),
        "11": the11?.toMap(),
        "12": the12?.toMap(),
        "13": the13?.toMap(),
        "14": the14?.toMap(),
        "15": the15?.toMap(),
        "16": the16?.toMap(),
        "17": the17?.toMap(),
        "18": the18?.toMap(),
        "19": the19?.toMap(),
        "20": the20?.toMap(),
        "21": the21?.toMap(),
        "22": the22?.toMap(),
        "23": the23?.toMap(),
        "24": the24?.toMap(),
        "25": the25?.toMap(),
        "26": the26?.toMap(),
      };
}

class The1 {
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
  final bool? timesheetWidget;
  final bool? isPosGroupable;

  The1({
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

  factory The1.fromJson(String str) => The1.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory The1.fromMap(Map<String, dynamic> json) => The1(
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

class The3 {
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
  final String? timesheetWidget;
  final bool? isPosGroupable;

  The3({
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

  factory The3.fromJson(String str) => The3.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory The3.fromMap(Map<String, dynamic> json) => The3(
        id: json["id"],
        name: json["name"],
        categoryId: json["category_id"] == null
            ? []
            : List<dynamic>.from(json["category_id"]!.map((x) => x)),
        factor: json["factor"],
        factorInv: json["factor_inv"]?.toDouble(),
        rounding: json["rounding"]?.toDouble(),
        active: json["active"],
        uomType: json["uom_type"],
        ratio: json["ratio"],
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
