import 'dart:convert';

class LoyaltyProgram {
  final int? id;
  final String? name;
  final String? trigger;
  final String? appliesOn;
  final String? programType;
  final List<dynamic>? pricelistIds;
  final bool? dateFrom;
  final bool? dateTo;
  final bool? limitUsage;
  final int? maxUsage;
  final bool? isNominative;
  final bool? portalVisible;
  final String? portalPointName;
  final List<int>? triggerProductIds;

  LoyaltyProgram({
    this.id,
    this.name,
    this.trigger,
    this.appliesOn,
    this.programType,
    this.pricelistIds,
    this.dateFrom,
    this.dateTo,
    this.limitUsage,
    this.maxUsage,
    this.isNominative,
    this.portalVisible,
    this.portalPointName,
    this.triggerProductIds,
  });

  factory LoyaltyProgram.fromJson(String str) =>
      LoyaltyProgram.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory LoyaltyProgram.fromMap(Map<String, dynamic> json) => LoyaltyProgram(
    id: json["id"],
    name: json["name"],
    trigger: json["trigger"],
    appliesOn: json["applies_on"],
    programType: json["program_type"],
    pricelistIds: json["pricelist_ids"] == null
        ? []
        : List<dynamic>.from(json["pricelist_ids"]!.map((x) => x)),
    dateFrom: json["date_from"],
    dateTo: json["date_to"],
    limitUsage: json["limit_usage"],
    maxUsage: json["max_usage"],
    isNominative: json["is_nominative"],
    portalVisible: json["portal_visible"],
    portalPointName: json["portal_point_name"],
    triggerProductIds: json["trigger_product_ids"] == null
        ? []
        : List<int>.from(json["trigger_product_ids"]!.map((x) => x)),
  );

  Map<String, dynamic> toMap() => {
    "id": id,
    "name": name,
    "trigger": trigger,
    "applies_on": appliesOn,
    "program_type": programType,
    "pricelist_ids": pricelistIds == null
        ? []
        : List<dynamic>.from(pricelistIds!.map((x) => x)),
    "date_from": dateFrom,
    "date_to": dateTo,
    "limit_usage": limitUsage,
    "max_usage": maxUsage,
    "is_nominative": isNominative,
    "portal_visible": portalVisible,
    "portal_point_name": portalPointName,
    "trigger_product_ids": triggerProductIds == null
        ? []
        : List<dynamic>.from(triggerProductIds!.map((x) => x)),
  };
}

class LoyaltyReward {
  final int? id;
  final String? description;
  final List<dynamic>? programId;
  final String? rewardType;
  final double? requiredPoints;
  final bool? clearWallet;
  final List<dynamic>? currencyId;
  final double? discount;
  final String? discountMode;
  final String? discountApplicability;
  final List<dynamic>? allDiscountProductIds;
  final bool? isGlobalDiscount;
  final double? discountMaxAmount;
  final List<dynamic>? discountLineProductId;
  final bool? multiProduct;
  final List<int>? rewardProductIds;
  final int? rewardProductQty;
  final dynamic rewardProductUomId;
  final String? rewardProductDomain;

  LoyaltyReward({
    this.id,
    this.description,
    this.programId,
    this.rewardType,
    this.requiredPoints,
    this.clearWallet,
    this.currencyId,
    this.discount,
    this.discountMode,
    this.discountApplicability,
    this.allDiscountProductIds,
    this.isGlobalDiscount,
    this.discountMaxAmount,
    this.discountLineProductId,
    this.multiProduct,
    this.rewardProductIds,
    this.rewardProductQty,
    this.rewardProductUomId,
    this.rewardProductDomain,
  });

  factory LoyaltyReward.fromJson(String str) =>
      LoyaltyReward.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory LoyaltyReward.fromMap(Map<String, dynamic> json) => LoyaltyReward(
    id: json["id"],
    description: json["description"],
    programId: json["program_id"] == null
        ? []
        : List<dynamic>.from(json["program_id"]!.map((x) => x)),
    rewardType: json["reward_type"],
    requiredPoints: json["required_points"],
    clearWallet: json["clear_wallet"],
    currencyId: json["currency_id"] == null
        ? []
        : List<dynamic>.from(json["currency_id"]!.map((x) => x)),
    discount: json["discount"],
    discountMode: json["discount_mode"],
    discountApplicability: json["discount_applicability"],
    allDiscountProductIds: json["all_discount_product_ids"] == null
        ? []
        : List<dynamic>.from(
        json["all_discount_product_ids"]!.map((x) => x)),
    isGlobalDiscount: json["is_global_discount"],
    discountMaxAmount: json["discount_max_amount"],
    discountLineProductId: json["discount_line_product_id"] == null
        ? []
        : List<dynamic>.from(
        json["discount_line_product_id"]!.map((x) => x)),
    multiProduct: json["multi_product"],
    rewardProductIds: json["reward_product_ids"] == null
        ? []
        : List<int>.from(json["reward_product_ids"]!.map((x) => x)),
    rewardProductQty: json["reward_product_qty"],
    rewardProductUomId: json["reward_product_uom_id"],
    rewardProductDomain: json["reward_product_domain"],
  );

  Map<String, dynamic> toMap() => {
    "id": id,
    "description": description,
    "program_id": programId == null
        ? []
        : List<dynamic>.from(programId!.map((x) => x)),
    "reward_type": rewardType,
    "required_points": requiredPoints,
    "clear_wallet": clearWallet,
    "currency_id": currencyId == null
        ? []
        : List<dynamic>.from(currencyId!.map((x) => x)),
    "discount": discount,
    "discount_mode": discountMode,
    "discount_applicability": discountApplicability,
    "all_discount_product_ids": allDiscountProductIds == null
        ? []
        : List<dynamic>.from(allDiscountProductIds!.map((x) => x)),
    "is_global_discount": isGlobalDiscount,
    "discount_max_amount": discountMaxAmount,
    "discount_line_product_id": discountLineProductId == null
        ? []
        : List<dynamic>.from(discountLineProductId!.map((x) => x)),
    "multi_product": multiProduct,
    "reward_product_ids": rewardProductIds == null
        ? []
        : List<dynamic>.from(rewardProductIds!.map((x) => x)),
    "reward_product_qty": rewardProductQty,
    "reward_product_uom_id": rewardProductUomId,
    "reward_product_domain": rewardProductDomain,
  };
}

class LoyaltyRule {
  final int? id;
  final List<dynamic>? programId;
  final List<int>? validProductIds;
  final bool? anyProduct;
  final List<dynamic>? currencyId;
  final double? rewardPointAmount;
  final bool? rewardPointSplit;
  final String? rewardPointMode;
  final int? minimumQty;
  final double? minimumAmount;
  final String? minimumAmountTaxMode;
  final String? mode;
  final dynamic code;

  LoyaltyRule({
    this.id,
    this.programId,
    this.validProductIds,
    this.anyProduct,
    this.currencyId,
    this.rewardPointAmount,
    this.rewardPointSplit,
    this.rewardPointMode,
    this.minimumQty,
    this.minimumAmount,
    this.minimumAmountTaxMode,
    this.mode,
    this.code,
  });

  factory LoyaltyRule.fromJson(String str) =>
      LoyaltyRule.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory LoyaltyRule.fromMap(Map<String, dynamic> json) => LoyaltyRule(
    id: json["id"],
    programId: json["program_id"] == null
        ? []
        : List<dynamic>.from(json["program_id"]!.map((x) => x)),
    validProductIds: json["valid_product_ids"] == null
        ? []
        : List<int>.from(json["valid_product_ids"]!.map((x) => x)),
    anyProduct: json["any_product"],
    currencyId: json["currency_id"] == null
        ? []
        : List<dynamic>.from(json["currency_id"]!.map((x) => x)),
    rewardPointAmount: json["reward_point_amount"],
    rewardPointSplit: json["reward_point_split"],
    rewardPointMode: json["reward_point_mode"],
    minimumQty: json["minimum_qty"],
    minimumAmount: json["minimum_amount"],
    minimumAmountTaxMode: json["minimum_amount_tax_mode"],
    mode: json["mode"],
    code: json["code"],
  );

  Map<String, dynamic> toMap() => {
    "id": id,
    "program_id": programId == null
        ? []
        : List<dynamic>.from(programId!.map((x) => x)),
    "valid_product_ids": validProductIds == null
        ? []
        : List<dynamic>.from(validProductIds!.map((x) => x)),
    "any_product": anyProduct,
    "currency_id": currencyId == null
        ? []
        : List<dynamic>.from(currencyId!.map((x) => x)),
    "reward_point_amount": rewardPointAmount,
    "reward_point_split": rewardPointSplit,
    "reward_point_mode": rewardPointMode,
    "minimum_qty": minimumQty,
    "minimum_amount": minimumAmount,
    "minimum_amount_tax_mode": minimumAmountTaxMode,
    "mode": mode,
    "code": code,
  };
}