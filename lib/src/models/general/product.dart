import 'dart:convert';

class ProductIdToProgramIds {
  final List<int>? the36;

  ProductIdToProgramIds({
    this.the36,
  });

  factory ProductIdToProgramIds.fromJson(String str) =>
      ProductIdToProgramIds.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory ProductIdToProgramIds.fromMap(Map<String, dynamic> json) =>
      ProductIdToProgramIds(
        the36:
            json["36"] == null ? [] : List<int>.from(json["36"]!.map((x) => x)),
      );

  Map<String, dynamic> toMap() => {
        "36": the36 == null ? [] : List<dynamic>.from(the36!.map((x) => x)),
      };
}

class ProductProductElement {
  final int? id;
  final String? displayName;
  final double? lstPrice;
  final double? standardPrice;
  final List<dynamic>? categId;
  final List<int>? posCategIds;
  final List<int>? taxesId;
  final dynamic barcode;
  final dynamic defaultCode;
  final bool? toWeight;
  final List<dynamic>? uomId;
  final dynamic descriptionSale;
  final dynamic description;
  final List<dynamic>? productTmplId;
  final String? tracking;
  final String? writeDate;
  final bool? availableInPos;
  final List<int>? attributeLineIds;
  final bool? active;
  final bool? image128;
  final List<int>? comboIds;
  final List<dynamic>? allProductTagIds;
  final String? invoicePolicy;
  final String? type;
  final List<int>? optionalProductIds;
  final bool? selfOrderAvailable;
  final Categ? categ;

  ProductProductElement({
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

  factory ProductProductElement.fromJson(String str) =>
      ProductProductElement.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory ProductProductElement.fromMap(Map<String, dynamic> json) =>
      ProductProductElement(
        id: json["id"],
        displayName: json["display_name"],
        lstPrice: json["lst_price"]?.toDouble(),
        standardPrice: json["standard_price"]?.toDouble(),
        categId: json["categ_id"] == null
            ? []
            : List<dynamic>.from(json["categ_id"]!.map((x) => x)),
        posCategIds: json["pos_categ_ids"] == null
            ? []
            : List<int>.from(json["pos_categ_ids"]!.map((x) => x)),
        taxesId: json["taxes_id"] == null
            ? []
            : List<int>.from(json["taxes_id"]!.map((x) => x)),
        barcode: json["barcode"],
        defaultCode: json["default_code"],
        toWeight: json["to_weight"],
        uomId: json["uom_id"] == null
            ? []
            : List<dynamic>.from(json["uom_id"]!.map((x) => x)),
        descriptionSale: json["description_sale"],
        description: json["description"],
        productTmplId: json["product_tmpl_id"] == null
            ? []
            : List<dynamic>.from(json["product_tmpl_id"]!.map((x) => x)),
        tracking: json["tracking"],
        writeDate: json["write_date"],
        availableInPos: json["available_in_pos"],
        attributeLineIds: json["attribute_line_ids"] == null
            ? []
            : List<int>.from(json["attribute_line_ids"]!.map((x) => x)),
        active: json["active"],
        image128: json["image_128"],
        comboIds: json["combo_ids"] == null
            ? []
            : List<int>.from(json["combo_ids"]!.map((x) => x)),
        allProductTagIds: json["all_product_tag_ids"] == null
            ? []
            : List<dynamic>.from(json["all_product_tag_ids"]!.map((x) => x)),
        invoicePolicy: json["invoice_policy"],
        type: json["type"],
        optionalProductIds: json["optional_product_ids"] == null
            ? []
            : List<int>.from(json["optional_product_ids"]!.map((x) => x)),
        selfOrderAvailable: json["self_order_available"],
        categ: json["categ"] == null ? null : Categ.fromMap(json["categ"]),
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "display_name": displayName,
        "lst_price": lstPrice,
        "standard_price": standardPrice,
        "categ_id":
            categId == null ? [] : List<dynamic>.from(categId!.map((x) => x)),
        "pos_categ_ids": posCategIds == null
            ? []
            : List<dynamic>.from(posCategIds!.map((x) => x)),
        "taxes_id":
            taxesId == null ? [] : List<dynamic>.from(taxesId!.map((x) => x)),
        "barcode": barcode,
        "default_code": defaultCode,
        "to_weight": toWeight,
        "uom_id": uomId == null ? [] : List<dynamic>.from(uomId!.map((x) => x)),
        "description_sale": descriptionSale,
        "description": description,
        "product_tmpl_id": productTmplId == null
            ? []
            : List<dynamic>.from(productTmplId!.map((x) => x)),
        "tracking": tracking,
        "write_date": writeDate,
        "available_in_pos": availableInPos,
        "attribute_line_ids": attributeLineIds == null
            ? []
            : List<dynamic>.from(attributeLineIds!.map((x) => x)),
        "active": active,
        "image_128": image128,
        "combo_ids":
            comboIds == null ? [] : List<dynamic>.from(comboIds!.map((x) => x)),
        "all_product_tag_ids": allProductTagIds == null
            ? []
            : List<dynamic>.from(allProductTagIds!.map((x) => x)),
        "invoice_policy": invoicePolicy,
        "type": type,
        "optional_product_ids": optionalProductIds == null
            ? []
            : List<dynamic>.from(optionalProductIds!.map((x) => x)),
        "self_order_available": selfOrderAvailable,
        "categ": categ?.toMap(),
      };
}

class Categ {
  final int? id;
  final String? name;
  final dynamic parentId;
  final CategParent? parent;

  Categ({
    this.id,
    this.name,
    this.parentId,
    this.parent,
  });

  factory Categ.fromJson(String str) => Categ.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Categ.fromMap(Map<String, dynamic> json) => Categ(
        id: json["id"],
        name: json["name"],
        parentId: json["parent_id"],
        parent:
            json["parent"] == null ? null : CategParent.fromMap(json["parent"]),
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "name": name,
        "parent_id": parentId,
        "parent": parent?.toMap(),
      };
}

class CategParent {
  final int? id;
  final String? name;
  final dynamic parentId;
  final ParentParent? parent;

  CategParent({
    this.id,
    this.name,
    this.parentId,
    this.parent,
  });

  factory CategParent.fromJson(String str) =>
      CategParent.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory CategParent.fromMap(Map<String, dynamic> json) => CategParent(
        id: json["id"],
        name: json["name"],
        parentId: json["parent_id"],
        parent: json["parent"] == null
            ? null
            : ParentParent.fromMap(json["parent"]),
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "name": name,
        "parent_id": parentId,
        "parent": parent?.toMap(),
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

  factory ParentParent.fromJson(String str) =>
      ParentParent.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory ParentParent.fromMap(Map<String, dynamic> json) => ParentParent(
        id: json["id"],
        name: json["name"],
        parentId: json["parent_id"],
        parent: json["parent"],
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "name": name,
        "parent_id": parentId,
        "parent": parent,
      };
}
