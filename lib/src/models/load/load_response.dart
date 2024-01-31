import 'dart:convert';

class LoadRequest {
  final String? jsonrpc;
  final int? id;
  final LoadRequestResult? result;

  LoadRequest({
    this.jsonrpc,
    this.id,
    this.result,
  });

  factory LoadRequest.fromRawJson(String str) => LoadRequest.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory LoadRequest.fromJson(Map<String, dynamic> json) => LoadRequest(
    jsonrpc: json["jsonrpc"],
    id: json["id"],
    result: json["result"] == null ? null : LoadRequestResult.fromJson(json["result"]),
  );

  Map<String, dynamic> toJson() => {
    "jsonrpc": jsonrpc,
    "id": id,
    "result": result?.toJson(),
  };
}

class LoadRequestResult {
  final int? id;
  final String? name;
  final String? type;
  final String? xmlId;
  final String? help;
  final bool? bindingModelId;
  final String? bindingType;
  final String? bindingViewTypes;
  final String? displayName;
  final bool? viewId;
  final String? domain;
  final String? context;
  final int? resId;
  final String? resModel;
  final String? target;
  final String? viewMode;
  final String? mobileViewMode;
  final List<List<dynamic>>? views;
  final int? limit;
  final List<dynamic>? groupsId;
  final List<dynamic>? searchViewId;
  final bool? filter;

  LoadRequestResult({
    this.id,
    this.name,
    this.type,
    this.xmlId,
    this.help,
    this.bindingModelId,
    this.bindingType,
    this.bindingViewTypes,
    this.displayName,
    this.viewId,
    this.domain,
    this.context,
    this.resId,
    this.resModel,
    this.target,
    this.viewMode,
    this.mobileViewMode,
    this.views,
    this.limit,
    this.groupsId,
    this.searchViewId,
    this.filter,
  });

  factory LoadRequestResult.fromRawJson(String str) => LoadRequestResult.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory LoadRequestResult.fromJson(Map<String, dynamic> json) => LoadRequestResult(
    id: json["id"],
    name: json["name"],
    type: json["type"],
    xmlId: json["xml_id"],
    help: json["help"],
    bindingModelId: json["binding_model_id"],
    bindingType: json["binding_type"],
    bindingViewTypes: json["binding_view_types"],
    displayName: json["display_name"],
    viewId: json["view_id"],
    domain: json["domain"],
    context: json["context"],
    resId: json["res_id"],
    resModel: json["res_model"],
    target: json["target"],
    viewMode: json["view_mode"],
    mobileViewMode: json["mobile_view_mode"],
    views: json["views"] == null ? [] : List<List<dynamic>>.from(json["views"]!.map((x) => List<dynamic>.from(x.map((x) => x)))),
    limit: json["limit"],
    groupsId: json["groups_id"] == null ? [] : List<dynamic>.from(json["groups_id"]!.map((x) => x)),
    searchViewId: json["search_view_id"] == null ? [] : List<dynamic>.from(json["search_view_id"]!.map((x) => x)),
    filter: json["filter"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "type": type,
    "xml_id": xmlId,
    "help": help,
    "binding_model_id": bindingModelId,
    "binding_type": bindingType,
    "binding_view_types": bindingViewTypes,
    "display_name": displayName,
    "view_id": viewId,
    "domain": domain,
    "context": context,
    "res_id": resId,
    "res_model": resModel,
    "target": target,
    "view_mode": viewMode,
    "mobile_view_mode": mobileViewMode,
    "views": views == null ? [] : List<dynamic>.from(views!.map((x) => List<dynamic>.from(x.map((x) => x)))),
    "limit": limit,
    "groups_id": groupsId == null ? [] : List<dynamic>.from(groupsId!.map((x) => x)),
    "search_view_id": searchViewId == null ? [] : List<dynamic>.from(searchViewId!.map((x) => x)),
    "filter": filter,
  };
}
