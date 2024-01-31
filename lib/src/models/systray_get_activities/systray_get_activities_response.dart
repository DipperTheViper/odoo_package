import 'dart:convert';

class SystrayGetActivitiesRequest {
  final String? jsonrpc;
  final int? id;
  final List<SystrayGetActivitiesRequestResult>? result;

  SystrayGetActivitiesRequest({
    this.jsonrpc,
    this.id,
    this.result,
  });

  factory SystrayGetActivitiesRequest.fromRawJson(String str) => SystrayGetActivitiesRequest.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory SystrayGetActivitiesRequest.fromJson(Map<String, dynamic> json) => SystrayGetActivitiesRequest(
    jsonrpc: json["jsonrpc"],
    id: json["id"],
    result: json["result"] == null ? [] : List<SystrayGetActivitiesRequestResult>.from(json["result"]!.map((x) => SystrayGetActivitiesRequestResult.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "jsonrpc": jsonrpc,
    "id": id,
    "result": result == null ? [] : List<dynamic>.from(result!.map((x) => x.toJson())),
  };
}

class SystrayGetActivitiesRequestResult {
  final int? id;
  final String? name;
  final String? model;
  final Type? type;
  final String? icon;
  final int? totalCount;
  final int? todayCount;
  final int? overdueCount;
  final int? plannedCount;
  final Type? viewType;

  SystrayGetActivitiesRequestResult({
    this.id,
    this.name,
    this.model,
    this.type,
    this.icon,
    this.totalCount,
    this.todayCount,
    this.overdueCount,
    this.plannedCount,
    this.viewType,
  });

  factory SystrayGetActivitiesRequestResult.fromRawJson(String str) => SystrayGetActivitiesRequestResult.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory SystrayGetActivitiesRequestResult.fromJson(Map<String, dynamic> json) => SystrayGetActivitiesRequestResult(
    id: json["id"],
    name: json["name"],
    model: json["model"],
    type: typeValues.map[json["type"]]!,
    icon: json["icon"],
    totalCount: json["total_count"],
    todayCount: json["today_count"],
    overdueCount: json["overdue_count"],
    plannedCount: json["planned_count"],
    viewType: typeValues.map[json["view_type"]]!,
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "model": model,
    "type": typeValues.reverse[type],
    "icon": icon,
    "total_count": totalCount,
    "today_count": todayCount,
    "overdue_count": overdueCount,
    "planned_count": plannedCount,
    "view_type": typeValues.reverse[viewType],
  };
}

enum Type {
  ACTIVITY,
  LIST
}

final typeValues = EnumValues({
  "activity": Type.ACTIVITY,
  "list": Type.LIST
});

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
