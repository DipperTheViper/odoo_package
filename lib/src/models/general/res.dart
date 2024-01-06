import 'dart:convert';

class ResCompany {
  final int? id;
  final List<dynamic>? currencyId;
  final String? email;
  final String? website;
  final bool? companyRegistry;
  final String? vat;
  final String? name;
  final String? phone;
  final List<dynamic>? partnerId;
  final List<dynamic>? countryId;
  final List<dynamic>? stateId;
  final String? taxCalculationRoundingMethod;
  final List<dynamic>? nomenclatureId;
  final bool? pointOfSaleUseTicketQrCode;
  final bool? pointOfSaleTicketUniqueCode;
  final ResLang? country;

  ResCompany({
    this.id,
    this.currencyId,
    this.email,
    this.website,
    this.companyRegistry,
    this.vat,
    this.name,
    this.phone,
    this.partnerId,
    this.countryId,
    this.stateId,
    this.taxCalculationRoundingMethod,
    this.nomenclatureId,
    this.pointOfSaleUseTicketQrCode,
    this.pointOfSaleTicketUniqueCode,
    this.country,
  });

  factory ResCompany.fromJson(String str) =>
      ResCompany.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory ResCompany.fromMap(Map<String, dynamic> json) => ResCompany(
        id: json["id"],
        currencyId: json["currency_id"] == null
            ? []
            : List<dynamic>.from(json["currency_id"]!.map((x) => x)),
        email: json["email"],
        website: json["website"],
        companyRegistry: json["company_registry"],
        vat: json["vat"],
        name: json["name"],
        phone: json["phone"],
        partnerId: json["partner_id"] == null
            ? []
            : List<dynamic>.from(json["partner_id"]!.map((x) => x)),
        countryId: json["country_id"] == null
            ? []
            : List<dynamic>.from(json["country_id"]!.map((x) => x)),
        stateId: json["state_id"] == null
            ? []
            : List<dynamic>.from(json["state_id"]!.map((x) => x)),
        taxCalculationRoundingMethod: json["tax_calculation_rounding_method"],
        nomenclatureId: json["nomenclature_id"] == null
            ? []
            : List<dynamic>.from(json["nomenclature_id"]!.map((x) => x)),
        pointOfSaleUseTicketQrCode: json["point_of_sale_use_ticket_qr_code"],
        pointOfSaleTicketUniqueCode: json["point_of_sale_ticket_unique_code"],
        country:
            json["country"] == null ? null : ResLang.fromMap(json["country"]),
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "currency_id": currencyId == null
            ? []
            : List<dynamic>.from(currencyId!.map((x) => x)),
        "email": email,
        "website": website,
        "company_registry": companyRegistry,
        "vat": vat,
        "name": name,
        "phone": phone,
        "partner_id": partnerId == null
            ? []
            : List<dynamic>.from(partnerId!.map((x) => x)),
        "country_id": countryId == null
            ? []
            : List<dynamic>.from(countryId!.map((x) => x)),
        "state_id":
            stateId == null ? [] : List<dynamic>.from(stateId!.map((x) => x)),
        "tax_calculation_rounding_method": taxCalculationRoundingMethod,
        "nomenclature_id": nomenclatureId == null
            ? []
            : List<dynamic>.from(nomenclatureId!.map((x) => x)),
        "point_of_sale_use_ticket_qr_code": pointOfSaleUseTicketQrCode,
        "point_of_sale_ticket_unique_code": pointOfSaleTicketUniqueCode,
        "country": country?.toMap(),
      };
}

class ResLang {
  final int? id;
  final String? name;
  final String? vatLabel;
  final String? code;

  ResLang({
    this.id,
    this.name,
    this.vatLabel,
    this.code,
  });

  factory ResLang.fromJson(String str) => ResLang.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory ResLang.fromMap(Map<String, dynamic> json) => ResLang(
        id: json["id"],
        name: json["name"],
        vatLabel: json["vat_label"],
        code: json["code"],
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "name": name,
        "vat_label": vatLabel,
        "code": code,
      };
}

class ResCountry {
  final int? id;
  final String? name;
  final dynamic vatLabel;
  final String? code;

  ResCountry({
    this.id,
    this.name,
    this.vatLabel,
    this.code,
  });

  factory ResCountry.fromJson(String str) =>
      ResCountry.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory ResCountry.fromMap(Map<String, dynamic> json) => ResCountry(
        id: json["id"],
        name: json["name"],
        vatLabel: json["vat_label"],
        code: json["code"],
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "name": name,
        "vat_label": vatLabel,
        "code": code,
      };
}

class ResCountryState {
  final int? id;
  final String? name;
  final List<dynamic>? countryId;

  ResCountryState({
    this.id,
    this.name,
    this.countryId,
  });

  factory ResCountryState.fromJson(String str) =>
      ResCountryState.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory ResCountryState.fromMap(Map<String, dynamic> json) => ResCountryState(
        id: json["id"],
        name: json["name"],
        countryId: json["country_id"] == null
            ? []
            : List<dynamic>.from(json["country_id"]!.map((x) => x)),
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "name": name,
        "country_id": countryId == null
            ? []
            : List<dynamic>.from(countryId!.map((x) => x)),
      };
}

class ResCurrency {
  final int? id;
  final String? name;
  final String? symbol;
  final String? position;
  final double? rounding;
  final double? rate;
  final int? decimalPlaces;

  ResCurrency({
    this.id,
    this.name,
    this.symbol,
    this.position,
    this.rounding,
    this.rate,
    this.decimalPlaces,
  });

  factory ResCurrency.fromJson(String str) =>
      ResCurrency.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory ResCurrency.fromMap(Map<String, dynamic> json) => ResCurrency(
        id: json["id"],
        name: json["name"],
        symbol: json["symbol"],
        position: json["position"],
        rounding: json["rounding"]?.toDouble(),
        rate: json["rate"],
        decimalPlaces: json["decimal_places"],
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "name": name,
        "symbol": symbol,
        "position": position,
        "rounding": rounding,
        "rate": rate,
        "decimal_places": decimalPlaces,
      };
}

class ResPartner {
  final int? id;
  final String? name;
  final dynamic street;
  final dynamic city;
  final dynamic stateId;
  final dynamic countryId;
  final dynamic vat;
  final String? lang;
  final dynamic phone;
  final dynamic zip;
  final dynamic mobile;
  final dynamic email;
  final dynamic barcode;
  final String? writeDate;
  final bool? propertyAccountPositionId;
  final List<dynamic>? propertyProductPricelist;
  final dynamic parentName;
  final LoyaltyCards? loyaltyCards;

  ResPartner({
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

  factory ResPartner.fromJson(String str) =>
      ResPartner.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory ResPartner.fromMap(Map<String, dynamic> json) => ResPartner(
        id: json["id"],
        name: json["name"],
        street: json["street"],
        city: json["city"],
        stateId: json["state_id"],
        countryId: json["country_id"],
        vat: json["vat"],
        lang: json["lang"],
        phone: json["phone"],
        zip: json["zip"],
        mobile: json["mobile"],
        email: json["email"],
        barcode: json["barcode"],
        writeDate: json["write_date"],
        propertyAccountPositionId: json["property_account_position_id"],
        propertyProductPricelist: json["property_product_pricelist"] == null
            ? []
            : List<dynamic>.from(
                json["property_product_pricelist"]!.map((x) => x)),
        parentName: json["parent_name"],
        loyaltyCards: json["loyalty_cards"] == null
            ? null
            : LoyaltyCards.fromMap(json["loyalty_cards"]),
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "name": name,
        "street": street,
        "city": city,
        "state_id": stateId,
        "country_id": countryId,
        "vat": vat,
        "lang": lang,
        "phone": phone,
        "zip": zip,
        "mobile": mobile,
        "email": email,
        "barcode": barcode,
        "write_date": writeDate,
        "property_account_position_id": propertyAccountPositionId,
        "property_product_pricelist": propertyProductPricelist == null
            ? []
            : List<dynamic>.from(propertyProductPricelist!.map((x) => x)),
        "parent_name": parentName,
        "loyalty_cards": loyaltyCards?.toMap(),
      };
}

class LoyaltyCards {
  final The11? the28;
  final The11? the21;
  final The11? the32;
  final The11? the11;
  final The11? the23;
  final The11? the26;
  final The11? the18;
  final The11? the16;

  LoyaltyCards({
    this.the28,
    this.the21,
    this.the32,
    this.the11,
    this.the23,
    this.the26,
    this.the18,
    this.the16,
  });

  factory LoyaltyCards.fromJson(String str) =>
      LoyaltyCards.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory LoyaltyCards.fromMap(Map<String, dynamic> json) => LoyaltyCards(
        the28: json["28"] == null ? null : The11.fromMap(json["28"]),
        the21: json["21"] == null ? null : The11.fromMap(json["21"]),
        the32: json["32"] == null ? null : The11.fromMap(json["32"]),
        the11: json["11"] == null ? null : The11.fromMap(json["11"]),
        the23: json["23"] == null ? null : The11.fromMap(json["23"]),
        the26: json["26"] == null ? null : The11.fromMap(json["26"]),
        the18: json["18"] == null ? null : The11.fromMap(json["18"]),
        the16: json["16"] == null ? null : The11.fromMap(json["16"]),
      );

  Map<String, dynamic> toMap() => {
        "28": the28?.toMap(),
        "21": the21?.toMap(),
        "32": the32?.toMap(),
        "11": the11?.toMap(),
        "23": the23?.toMap(),
        "26": the26?.toMap(),
        "18": the18?.toMap(),
        "16": the16?.toMap(),
      };
}

class The11 {
  final double? points;
  final String? code;
  final int? programId;

  The11({
    this.points,
    this.code,
    this.programId,
  });

  factory The11.fromJson(String str) => The11.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory The11.fromMap(Map<String, dynamic> json) => The11(
        points: json["points"]?.toDouble(),
        code: json["code"],
        programId: json["program_id"],
      );

  Map<String, dynamic> toMap() => {
        "points": points,
        "code": code,
        "program_id": programId,
      };
}

class ResUsers {
  final int? id;
  final String? name;
  final List<dynamic>? partnerId;
  final String? role;

  ResUsers({
    this.id,
    this.name,
    this.partnerId,
    this.role,
  });

  factory ResUsers.fromJson(String str) => ResUsers.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory ResUsers.fromMap(Map<String, dynamic> json) => ResUsers(
        id: json["id"],
        name: json["name"],
        partnerId: json["partner_id"] == null
            ? []
            : List<dynamic>.from(json["partner_id"]!.map((x) => x)),
        role: json["role"],
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "name": name,
        "partner_id": partnerId == null
            ? []
            : List<dynamic>.from(partnerId!.map((x) => x)),
        "role": role,
      };
}
