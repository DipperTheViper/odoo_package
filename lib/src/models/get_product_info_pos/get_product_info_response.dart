import 'dart:convert';

class GetProductInfoResponse {
  final String? jsonrpc;
  final int? id;
  final GetProductInfoResponseResult? result;

  GetProductInfoResponse({
    this.jsonrpc,
    this.id,
    this.result,
  });

  factory GetProductInfoResponse.fromRawJson(String str) => GetProductInfoResponse.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory GetProductInfoResponse.fromJson(Map<String, dynamic> json) => GetProductInfoResponse(
    jsonrpc: json["jsonrpc"],
    id: json["id"],
    result: json["result"] == null ? null : GetProductInfoResponseResult.fromJson(json["result"]),
  );

  Map<String, dynamic> toJson() => {
    "jsonrpc": jsonrpc,
    "id": id,
    "result": result?.toJson(),
  };
}

class GetProductInfoResponseResult {
  final AllPrices? allPrices;
  final List<dynamic>? pricelists;
  final List<Warehouse>? warehouses;
  final List<Supplier>? suppliers;
  final List<Variant>? variants;
  final List<OptionalProduct>? optionalProducts;

  GetProductInfoResponseResult({
    this.allPrices,
    this.pricelists,
    this.warehouses,
    this.suppliers,
    this.variants,
    this.optionalProducts,
  });

  factory GetProductInfoResponseResult.fromRawJson(String str) => GetProductInfoResponseResult.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory GetProductInfoResponseResult.fromJson(Map<String, dynamic> json) => GetProductInfoResponseResult(
    allPrices: json["all_prices"] == null ? null : AllPrices.fromJson(json["all_prices"]),
    pricelists: json["pricelists"] == null ? [] : List<dynamic>.from(json["pricelists"]!.map((x) => x)),
    warehouses: json["warehouses"] == null ? [] : List<Warehouse>.from(json["warehouses"]!.map((x) => Warehouse.fromJson(x))),
    suppliers: json["suppliers"] == null ? [] : List<Supplier>.from(json["suppliers"]!.map((x) => Supplier.fromJson(x))),
    variants: json["variants"] == null ? [] : List<Variant>.from(json["variants"]!.map((x) => Variant.fromJson(x))),
    optionalProducts: json["optional_products"] == null ? [] : List<OptionalProduct>.from(json["optional_products"]!.map((x) => OptionalProduct.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "all_prices": allPrices?.toJson(),
    "pricelists": pricelists == null ? [] : List<dynamic>.from(pricelists!.map((x) => x)),
    "warehouses": warehouses == null ? [] : List<dynamic>.from(warehouses!.map((x) => x.toJson())),
    "suppliers": suppliers == null ? [] : List<dynamic>.from(suppliers!.map((x) => x.toJson())),
    "variants": variants == null ? [] : List<dynamic>.from(variants!.map((x) => x.toJson())),
    "optional_products": optionalProducts == null ? [] : List<dynamic>.from(optionalProducts!.map((x) => x.toJson())),
  };
}

class AllPrices {
  final int? priceWithoutTax;
  final double? priceWithTax;
  final List<TaxDetail>? taxDetails;

  AllPrices({
    this.priceWithoutTax,
    this.priceWithTax,
    this.taxDetails,
  });

  factory AllPrices.fromRawJson(String str) => AllPrices.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory AllPrices.fromJson(Map<String, dynamic> json) => AllPrices(
    priceWithoutTax: json["price_without_tax"],
    priceWithTax: json["price_with_tax"]?.toDouble(),
    taxDetails: json["tax_details"] == null ? [] : List<TaxDetail>.from(json["tax_details"]!.map((x) => TaxDetail.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "price_without_tax": priceWithoutTax,
    "price_with_tax": priceWithTax,
    "tax_details": taxDetails == null ? [] : List<dynamic>.from(taxDetails!.map((x) => x.toJson())),
  };
}

class TaxDetail {
  final String? name;
  final double? amount;

  TaxDetail({
    this.name,
    this.amount,
  });

  factory TaxDetail.fromRawJson(String str) => TaxDetail.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory TaxDetail.fromJson(Map<String, dynamic> json) => TaxDetail(
    name: json["name"],
    amount: json["amount"]?.toDouble(),
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "amount": amount,
  };
}

class OptionalProduct {
  final String? name;
  final int? price;

  OptionalProduct({
    this.name,
    this.price,
  });

  factory OptionalProduct.fromRawJson(String str) => OptionalProduct.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory OptionalProduct.fromJson(Map<String, dynamic> json) => OptionalProduct(
    name: json["name"],
    price: json["price"],
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "price": price,
  };
}

class Supplier {
  final String? name;
  final int? delay;
  final double? price;

  Supplier({
    this.name,
    this.delay,
    this.price,
  });

  factory Supplier.fromRawJson(String str) => Supplier.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Supplier.fromJson(Map<String, dynamic> json) => Supplier(
    name: json["name"],
    delay: json["delay"],
    price: json["price"]?.toDouble(),
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "delay": delay,
    "price": price,
  };
}

class Variant {
  final String? name;
  final List<Value>? values;

  Variant({
    this.name,
    this.values,
  });

  factory Variant.fromRawJson(String str) => Variant.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Variant.fromJson(Map<String, dynamic> json) => Variant(
    name: json["name"],
    values: json["values"] == null ? [] : List<Value>.from(json["values"]!.map((x) => Value.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "values": values == null ? [] : List<dynamic>.from(values!.map((x) => x.toJson())),
  };
}

class Value {
  final String? name;
  final String? search;

  Value({
    this.name,
    this.search,
  });

  factory Value.fromRawJson(String str) => Value.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Value.fromJson(Map<String, dynamic> json) => Value(
    name: json["name"],
    search: json["search"],
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "search": search,
  };
}

class Warehouse {
  final String? name;
  final int? availableQuantity;
  final int? forecastedQuantity;
  final String? uom;

  Warehouse({
    this.name,
    this.availableQuantity,
    this.forecastedQuantity,
    this.uom,
  });

  factory Warehouse.fromRawJson(String str) => Warehouse.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Warehouse.fromJson(Map<String, dynamic> json) => Warehouse(
    name: json["name"],
    availableQuantity: json["available_quantity"],
    forecastedQuantity: json["forecasted_quantity"],
    uom: json["uom"],
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "available_quantity": availableQuantity,
    "forecasted_quantity": forecastedQuantity,
    "uom": uom,
  };
}
