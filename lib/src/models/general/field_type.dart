import 'dart:convert';

class FieldTypes {
  final FieldTypesProductProduct? productProduct;

  FieldTypes({
    this.productProduct,
  });

  factory FieldTypes.fromJson(String str) =>
      FieldTypes.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory FieldTypes.fromMap(Map<String, dynamic> json) => FieldTypes(
        productProduct: json["product.product"] == null
            ? null
            : FieldTypesProductProduct.fromMap(json["product.product"]),
      );

  Map<String, dynamic> toMap() => {
        "product.product": productProduct?.toMap(),
      };
}

class FieldTypesProductProduct {
  final String? lstPrice;
  final String? defaultCode;
  final String? active;
  final String? productTmplId;
  final String? barcode;
  final String? standardPrice;
  final String? allProductTagIds;
  final String? image128;
  final String? writeDate;
  final String? displayName;
  final String? description;
  final String? descriptionSale;
  final String? type;
  final String? categId;
  final String? uomId;
  final String? attributeLineIds;
  final String? taxesId;
  final String? tracking;
  final String? availableInPos;
  final String? toWeight;
  final String? posCategIds;
  final String? comboIds;
  final String? invoicePolicy;
  final String? optionalProductIds;
  final String? selfOrderAvailable;

  FieldTypesProductProduct({
    this.lstPrice,
    this.defaultCode,
    this.active,
    this.productTmplId,
    this.barcode,
    this.standardPrice,
    this.allProductTagIds,
    this.image128,
    this.writeDate,
    this.displayName,
    this.description,
    this.descriptionSale,
    this.type,
    this.categId,
    this.uomId,
    this.attributeLineIds,
    this.taxesId,
    this.tracking,
    this.availableInPos,
    this.toWeight,
    this.posCategIds,
    this.comboIds,
    this.invoicePolicy,
    this.optionalProductIds,
    this.selfOrderAvailable,
  });

  factory FieldTypesProductProduct.fromJson(String str) =>
      FieldTypesProductProduct.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory FieldTypesProductProduct.fromMap(Map<String, dynamic> json) =>
      FieldTypesProductProduct(
        lstPrice: json["lst_price"],
        defaultCode: json["default_code"],
        active: json["active"],
        productTmplId: json["product_tmpl_id"],
        barcode: json["barcode"],
        standardPrice: json["standard_price"],
        allProductTagIds: json["all_product_tag_ids"],
        image128: json["image_128"],
        writeDate: json["write_date"],
        displayName: json["display_name"],
        description: json["description"],
        descriptionSale: json["description_sale"],
        type: json["type"],
        categId: json["categ_id"],
        uomId: json["uom_id"],
        attributeLineIds: json["attribute_line_ids"],
        taxesId: json["taxes_id"],
        tracking: json["tracking"],
        availableInPos: json["available_in_pos"],
        toWeight: json["to_weight"],
        posCategIds: json["pos_categ_ids"],
        comboIds: json["combo_ids"],
        invoicePolicy: json["invoice_policy"],
        optionalProductIds: json["optional_product_ids"],
        selfOrderAvailable: json["self_order_available"],
      );

  Map<String, dynamic> toMap() => {
        "lst_price": lstPrice,
        "default_code": defaultCode,
        "active": active,
        "product_tmpl_id": productTmplId,
        "barcode": barcode,
        "standard_price": standardPrice,
        "all_product_tag_ids": allProductTagIds,
        "image_128": image128,
        "write_date": writeDate,
        "display_name": displayName,
        "description": description,
        "description_sale": descriptionSale,
        "type": type,
        "categ_id": categId,
        "uom_id": uomId,
        "attribute_line_ids": attributeLineIds,
        "taxes_id": taxesId,
        "tracking": tracking,
        "available_in_pos": availableInPos,
        "to_weight": toWeight,
        "pos_categ_ids": posCategIds,
        "combo_ids": comboIds,
        "invoice_policy": invoicePolicy,
        "optional_product_ids": optionalProductIds,
        "self_order_available": selfOrderAvailable,
      };
}
