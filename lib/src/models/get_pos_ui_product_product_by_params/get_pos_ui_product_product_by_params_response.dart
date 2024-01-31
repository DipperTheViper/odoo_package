import 'dart:convert';

class GetPosUiProductProductByParamsResponse {
  final String? jsonrpc;
  final int? id;
  final List<GetPosUiProductProductByParamsResponseResult>? result;

  GetPosUiProductProductByParamsResponse({
    this.jsonrpc,
    this.id,
    this.result,
  });

  factory GetPosUiProductProductByParamsResponse.fromRawJson(String str) => GetPosUiProductProductByParamsResponse.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory GetPosUiProductProductByParamsResponse.fromJson(Map<String, dynamic> json) => GetPosUiProductProductByParamsResponse(
    jsonrpc: json["jsonrpc"],
    id: json["id"],
    result: json["result"] == null ? [] : List<GetPosUiProductProductByParamsResponseResult>.from(json["result"]!.map((x) => GetPosUiProductProductByParamsResponseResult.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "jsonrpc": jsonrpc,
    "id": id,
    "result": result == null ? [] : List<dynamic>.from(result!.map((x) => x.toJson())),
  };
}

class GetPosUiProductProductByParamsResponseResult {
  final int? id;
  final String? displayName;
  final double? lstPrice;
  final int? standardPrice;
  final List<dynamic>? categId;
  final List<int>? posCategIds;
  final List<int>? taxesId;
  final bool? barcode;
  final String? defaultCode;
  final bool? toWeight;
  final List<dynamic>? uomId;
  final bool? descriptionSale;
  final bool? description;
  final List<dynamic>? productTmplId;
  final String? tracking;
  final DateTime? writeDate;
  final bool? availableInPos;
  final List<int>? attributeLineIds;
  final bool? active;
  final bool? image128;
  final List<dynamic>? comboIds;
  final List<dynamic>? allProductTagIds;
  final String? invoicePolicy;
  final String? type;
  final List<int>? optionalProductIds;
  final bool? selfOrderAvailable;
  final Categ? categ;

  GetPosUiProductProductByParamsResponseResult({
    this.id,
    this.displayName,
    this.lstPrice,
    this.standardPrice,
    this.categId,
    this.posCategIds,
    this.taxesId,
    this.barcode,
    this.defaultCode,
    this.toWeight,
    this.uomId,
    this.descriptionSale,
    this.description,
    this.productTmplId,
    this.tracking,
    this.writeDate,
    this.availableInPos,
    this.attributeLineIds,
    this.active,
    this.image128,
    this.comboIds,
    this.allProductTagIds,
    this.invoicePolicy,
    this.type,
    this.optionalProductIds,
    this.selfOrderAvailable,
    this.categ,
  });

  factory GetPosUiProductProductByParamsResponseResult.fromRawJson(String str) => GetPosUiProductProductByParamsResponseResult.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory GetPosUiProductProductByParamsResponseResult.fromJson(Map<String, dynamic> json) => GetPosUiProductProductByParamsResponseResult(
    id: json["id"],
    displayName: json["display_name"],
    lstPrice: json["lst_price"]?.toDouble(),
    standardPrice: json["standard_price"],
    categId: json["categ_id"] == null ? [] : List<dynamic>.from(json["categ_id"]!.map((x) => x)),
    posCategIds: json["pos_categ_ids"] == null ? [] : List<int>.from(json["pos_categ_ids"]!.map((x) => x)),
    taxesId: json["taxes_id"] == null ? [] : List<int>.from(json["taxes_id"]!.map((x) => x)),
    barcode: json["barcode"],
    defaultCode: json["default_code"],
    toWeight: json["to_weight"],
    uomId: json["uom_id"] == null ? [] : List<dynamic>.from(json["uom_id"]!.map((x) => x)),
    descriptionSale: json["description_sale"],
    description: json["description"],
    productTmplId: json["product_tmpl_id"] == null ? [] : List<dynamic>.from(json["product_tmpl_id"]!.map((x) => x)),
    tracking: json["tracking"],
    writeDate: json["write_date"] == null ? null : DateTime.parse(json["write_date"]),
    availableInPos: json["available_in_pos"],
    attributeLineIds: json["attribute_line_ids"] == null ? [] : List<int>.from(json["attribute_line_ids"]!.map((x) => x)),
    active: json["active"],
    image128: json["image_128"],
    comboIds: json["combo_ids"] == null ? [] : List<dynamic>.from(json["combo_ids"]!.map((x) => x)),
    allProductTagIds: json["all_product_tag_ids"] == null ? [] : List<dynamic>.from(json["all_product_tag_ids"]!.map((x) => x)),
    invoicePolicy: json["invoice_policy"],
    type: json["type"],
    optionalProductIds: json["optional_product_ids"] == null ? [] : List<int>.from(json["optional_product_ids"]!.map((x) => x)),
    selfOrderAvailable: json["self_order_available"],
    categ: json["categ"] == null ? null : Categ.fromJson(json["categ"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "display_name": displayName,
    "lst_price": lstPrice,
    "standard_price": standardPrice,
    "categ_id": categId == null ? [] : List<dynamic>.from(categId!.map((x) => x)),
    "pos_categ_ids": posCategIds == null ? [] : List<dynamic>.from(posCategIds!.map((x) => x)),
    "taxes_id": taxesId == null ? [] : List<dynamic>.from(taxesId!.map((x) => x)),
    "barcode": barcode,
    "default_code": defaultCode,
    "to_weight": toWeight,
    "uom_id": uomId == null ? [] : List<dynamic>.from(uomId!.map((x) => x)),
    "description_sale": descriptionSale,
    "description": description,
    "product_tmpl_id": productTmplId == null ? [] : List<dynamic>.from(productTmplId!.map((x) => x)),
    "tracking": tracking,
    "write_date": writeDate?.toIso8601String(),
    "available_in_pos": availableInPos,
    "attribute_line_ids": attributeLineIds == null ? [] : List<dynamic>.from(attributeLineIds!.map((x) => x)),
    "active": active,
    "image_128": image128,
    "combo_ids": comboIds == null ? [] : List<dynamic>.from(comboIds!.map((x) => x)),
    "all_product_tag_ids": allProductTagIds == null ? [] : List<dynamic>.from(allProductTagIds!.map((x) => x)),
    "invoice_policy": invoicePolicy,
    "type": type,
    "optional_product_ids": optionalProductIds == null ? [] : List<dynamic>.from(optionalProductIds!.map((x) => x)),
    "self_order_available": selfOrderAvailable,
    "categ": categ?.toJson(),
  };
}

class Categ {
  final int? id;
  final String? name;
  final List<dynamic>? parentId;
  final CategParent? parent;

  Categ({
    this.id,
    this.name,
    this.parentId,
    this.parent,
  });

  factory Categ.fromRawJson(String str) => Categ.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Categ.fromJson(Map<String, dynamic> json) => Categ(
    id: json["id"],
    name: json["name"],
    parentId: json["parent_id"] == null ? [] : List<dynamic>.from(json["parent_id"]!.map((x) => x)),
    parent: json["parent"] == null ? null : CategParent.fromJson(json["parent"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "parent_id": parentId == null ? [] : List<dynamic>.from(parentId!.map((x) => x)),
    "parent": parent?.toJson(),
  };
}

class CategParent {
  final int? id;
  final String? name;
  final List<dynamic>? parentId;
  final ParentParent? parent;

  CategParent({
    this.id,
    this.name,
    this.parentId,
    this.parent,
  });

  factory CategParent.fromRawJson(String str) => CategParent.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory CategParent.fromJson(Map<String, dynamic> json) => CategParent(
    id: json["id"],
    name: json["name"],
    parentId: json["parent_id"] == null ? [] : List<dynamic>.from(json["parent_id"]!.map((x) => x)),
    parent: json["parent"] == null ? null : ParentParent.fromJson(json["parent"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "parent_id": parentId == null ? [] : List<dynamic>.from(parentId!.map((x) => x)),
    "parent": parent?.toJson(),
  };
}

class ParentParent {
  final int? id;
  final String? name;
  final bool? parentId;
  final dynamic parent;

  ParentParent({
    this.id,
    this.name,
    this.parentId,
    this.parent,
  });

  factory ParentParent.fromRawJson(String str) => ParentParent.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ParentParent.fromJson(Map<String, dynamic> json) => ParentParent(
    id: json["id"],
    name: json["name"],
    parentId: json["parent_id"],
    parent: json["parent"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "parent_id": parentId,
    "parent": parent,
  };
}
