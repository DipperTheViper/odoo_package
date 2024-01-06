import 'dart:convert';

class AccountTax {
  final int? id;
  final String? name;
  final bool? priceInclude;
  final bool? includeBaseAmount;
  final bool? isBaseAffected;
  final String? amountType;
  final List<dynamic>? childrenTaxIds;
  final double? amount;
  final double? sumRepartitionFactor;

  AccountTax({
    this.id,
    this.name,
    this.priceInclude,
    this.includeBaseAmount,
    this.isBaseAffected,
    this.amountType,
    this.childrenTaxIds,
    this.amount,
    this.sumRepartitionFactor,
  });

  factory AccountTax.fromJson(String str) =>
      AccountTax.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory AccountTax.fromMap(Map<String, dynamic> json) => AccountTax(
        id: json["id"],
        name: json["name"],
        priceInclude: json["price_include"],
        includeBaseAmount: json["include_base_amount"],
        isBaseAffected: json["is_base_affected"],
        amountType: json["amount_type"],
        childrenTaxIds: json["children_tax_ids"] == null
            ? []
            : List<dynamic>.from(json["children_tax_ids"]!.map((x) => x)),
        amount: json["amount"],
        sumRepartitionFactor: json["sum_repartition_factor"],
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "name": name,
        "price_include": priceInclude,
        "include_base_amount": includeBaseAmount,
        "is_base_affected": isBaseAffected,
        "amount_type": amountType,
        "children_tax_ids": childrenTaxIds == null
            ? []
            : List<dynamic>.from(childrenTaxIds!.map((x) => x)),
        "amount": amount,
        "sum_repartition_factor": sumRepartitionFactor,
      };
}
