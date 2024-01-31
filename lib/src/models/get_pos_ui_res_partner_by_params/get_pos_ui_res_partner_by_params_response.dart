import 'dart:convert';

class GetPosUiResPartnerByParamsResponse {
  final String? jsonrpc;
  final int? id;
  final List<GetPosUiResPartnerByParamsResponseResult>? result;

  GetPosUiResPartnerByParamsResponse({
    this.jsonrpc,
    this.id,
    this.result,
  });

  factory GetPosUiResPartnerByParamsResponse.fromRawJson(String str) => GetPosUiResPartnerByParamsResponse.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory GetPosUiResPartnerByParamsResponse.fromJson(Map<String, dynamic> json) => GetPosUiResPartnerByParamsResponse(
    jsonrpc: json["jsonrpc"],
    id: json["id"],
    result: json["result"] == null ? [] : List<GetPosUiResPartnerByParamsResponseResult>.from(json["result"]!.map((x) => GetPosUiResPartnerByParamsResponseResult.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "jsonrpc": jsonrpc,
    "id": id,
    "result": result == null ? [] : List<GetPosUiResPartnerByParamsResponseResult>.from(result!.map((x) => x.toJson())),
  };
}

class GetPosUiResPartnerByParamsResponseResult {
  final int? id;
  final String? name;
  final String? street;
  final String? city;
  final List<dynamic>? stateId;
  final List<dynamic>? countryId;
  final String? vat;
  final String? lang;
  final String? phone;
  final String? zip;
  final String? mobile;
  final String? email;
  final dynamic barcode;
  final DateTime? writeDate;
  final bool? propertyAccountPositionId;
  final List<dynamic>? propertyProductPricelist;
  final bool? parentName;
  final LoyaltyCards? loyaltyCards;

  GetPosUiResPartnerByParamsResponseResult({
    this.id,
    this.name,
    this.street,
    this.city,
    this.stateId,
    this.countryId,
    this.vat,
    this.lang,
    this.phone,
    this.zip,
    this.mobile,
    this.email,
    this.barcode,
    this.writeDate,
    this.propertyAccountPositionId,
    this.propertyProductPricelist,
    this.parentName,
    this.loyaltyCards,
  });

  factory GetPosUiResPartnerByParamsResponseResult.fromRawJson(String str) => GetPosUiResPartnerByParamsResponseResult.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory GetPosUiResPartnerByParamsResponseResult.fromJson(Map<String, dynamic> json) => GetPosUiResPartnerByParamsResponseResult(
    id: json["id"],
    name: json["name"],
    street: json["street"],
    city: json["city"],
    stateId: json["state_id"] == null ? [] : List<dynamic>.from(json["state_id"]!.map((x) => x)),
    countryId: json["country_id"] == null ? [] : List<dynamic>.from(json["country_id"]!.map((x) => x)),
    vat: json["vat"],
    lang: json["lang"],
    phone: json["phone"],
    zip: json["zip"],
    mobile: json["mobile"],
    email: json["email"],
    barcode: json["barcode"],
    writeDate: json["write_date"] == null ? null : DateTime.parse(json["write_date"]),
    propertyAccountPositionId: json["property_account_position_id"],
    propertyProductPricelist: json["property_product_pricelist"] == null ? [] : List<dynamic>.from(json["property_product_pricelist"]!.map((x) => x)),
    parentName: json["parent_name"],
    loyaltyCards: json["loyalty_cards"] == null ? null : LoyaltyCards.fromJson(json["loyalty_cards"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "street": street,
    "city": city,
    "state_id": stateId == null ? [] : List<dynamic>.from(stateId!.map((x) => x)),
    "country_id": countryId == null ? [] : List<dynamic>.from(countryId!.map((x) => x)),
    "vat": vat,
    "lang": lang,
    "phone": phone,
    "zip": zip,
    "mobile": mobile,
    "email": email,
    "barcode": barcode,
    "write_date": writeDate?.toIso8601String(),
    "property_account_position_id": propertyAccountPositionId,
    "property_product_pricelist": propertyProductPricelist == null ? [] : List<dynamic>.from(propertyProductPricelist!.map((x) => x)),
    "parent_name": parentName,
    "loyalty_cards": loyaltyCards?.toJson(),
  };
}
///todo : define Loyalty card model for costumer
class LoyaltyCards {
  LoyaltyCards();

  factory LoyaltyCards.fromRawJson(String str) => LoyaltyCards.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory LoyaltyCards.fromJson(Map<String, dynamic> json) => LoyaltyCards(
  );

  Map<String, dynamic> toJson() => {
  };
}
