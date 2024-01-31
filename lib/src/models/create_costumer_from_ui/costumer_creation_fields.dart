import 'dart:convert';

class CostumerCreationFields {
  final String? name;
  final String? street;
  final String? city;
  final String? zip;
  final int? stateId;
  final int? countryId;
  final String? lang;
  final String? email;
  final String? phone;
  final String? mobile;
  final String? barcode;
  final String? vat;
  final bool? propertyProductPricelist;
  final bool? id;

 const  CostumerCreationFields({
    required this.name,
    required this.street ,
    required this.city,
    required this.zip ,
    required this.stateId ,
    required this.countryId,
    required this.lang,
    required this.email,
    required this.phone,
    required this.mobile,
     required this.barcode,
   required  this.vat,
    required this.propertyProductPricelist,
   required  this.id,
  });

  factory CostumerCreationFields.fromRawJson(String str) => CostumerCreationFields.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory CostumerCreationFields.fromJson(Map<String, dynamic> json) => CostumerCreationFields(
    name: json["name"],
    street: json["street"],
    city: json["city"],
    zip: json["zip"],
    stateId: json["state_id"],
    countryId: json["country_id"],
    lang: json["lang"],
    email: json["email"],
    phone: json["phone"],
    mobile: json["mobile"],
    barcode: json["barcode"],
    vat: json["vat"],
    propertyProductPricelist: json["property_product_pricelist"],
    id: json["id"],
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "street": street,
    "city": city,
    "zip": zip,
    "state_id": stateId,
    "country_id": countryId,
    "lang": lang,
    "email": email,
    "phone": phone,
    "mobile": mobile,
    "barcode": barcode,
    "vat": vat,
    "property_product_pricelist": propertyProductPricelist,
    "id": id,
  };
}
