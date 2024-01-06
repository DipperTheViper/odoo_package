import 'dart:convert';

class DecimalPrecision {
  final int? newApiPrecision;
  final int? percentageAnalytic;
  final int? productPrice;
  final int? discount;
  final int? stockWeight;
  final int? volume;
  final int? productUnitOfMeasure;
  final int? paymentTerms;

  DecimalPrecision({
    this.newApiPrecision,
    this.percentageAnalytic,
    this.productPrice,
    this.discount,
    this.stockWeight,
    this.volume,
    this.productUnitOfMeasure,
    this.paymentTerms,
  });

  factory DecimalPrecision.fromJson(String str) =>
      DecimalPrecision.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory DecimalPrecision.fromMap(Map<String, dynamic> json) =>
      DecimalPrecision(
        newApiPrecision: json["New API Precision"],
        percentageAnalytic: json["Percentage Analytic"],
        productPrice: json["Product Price"],
        discount: json["Discount"],
        stockWeight: json["Stock Weight"],
        volume: json["Volume"],
        productUnitOfMeasure: json["Product Unit of Measure"],
        paymentTerms: json["Payment Terms"],
      );

  Map<String, dynamic> toMap() => {
        "New API Precision": newApiPrecision,
        "Percentage Analytic": percentageAnalytic,
        "Product Price": productPrice,
        "Discount": discount,
        "Stock Weight": stockWeight,
        "Volume": volume,
        "Product Unit of Measure": productUnitOfMeasure,
        "Payment Terms": paymentTerms,
      };
}
