import 'dart:convert';

class GetClosingControlDataResponse {
  final String? jsonrpc;
  final int? id;
  final GetClosingControlDataResponseResult? result;

  GetClosingControlDataResponse({
    this.jsonrpc,
    this.id,
    this.result,
  });

  factory GetClosingControlDataResponse.fromRawJson(String str) => GetClosingControlDataResponse.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory GetClosingControlDataResponse.fromJson(Map<String, dynamic> json) => GetClosingControlDataResponse(
    jsonrpc: json["jsonrpc"],
    id: json["id"],
    result: json["result"] == null ? null : GetClosingControlDataResponseResult.fromJson(json["result"]),
  );

  Map<String, dynamic> toJson() => {
    "jsonrpc": jsonrpc,
    "id": id,
    "result": result?.toJson(),
  };
}

class GetClosingControlDataResponseResult {
  final OrdersDetails? ordersDetails;
  final String? openingNotes;
  final DefaultCashDetails? defaultCashDetails;
  final List<OtherPaymentMethod>? otherPaymentMethods;
  final bool? isManager;
  final dynamic amountAuthorizedDiff;

  GetClosingControlDataResponseResult({
    this.ordersDetails,
    this.openingNotes,
    this.defaultCashDetails,
    this.otherPaymentMethods,
    this.isManager,
    this.amountAuthorizedDiff,
  });

  factory GetClosingControlDataResponseResult.fromRawJson(String str) => GetClosingControlDataResponseResult.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory GetClosingControlDataResponseResult.fromJson(Map<String, dynamic> json) => GetClosingControlDataResponseResult(
    ordersDetails: json["orders_details"] == null ? null : OrdersDetails.fromJson(json["orders_details"]),
    openingNotes: json["opening_notes"],
    defaultCashDetails: json["default_cash_details"] == null ? null : DefaultCashDetails.fromJson(json["default_cash_details"]),
    otherPaymentMethods: json["other_payment_methods"] == null ? [] : List<OtherPaymentMethod>.from(json["other_payment_methods"]!.map((x) => OtherPaymentMethod.fromJson(x))),
    isManager: json["is_manager"],
    amountAuthorizedDiff: json["amount_authorized_diff"],
  );

  Map<String, dynamic> toJson() => {
    "orders_details": ordersDetails?.toJson(),
    "opening_notes": openingNotes,
    "default_cash_details": defaultCashDetails?.toJson(),
    "other_payment_methods": otherPaymentMethods == null ? [] : List<dynamic>.from(otherPaymentMethods!.map((x) => x.toJson())),
    "is_manager": isManager,
    "amount_authorized_diff": amountAuthorizedDiff,
  };
}

class DefaultCashDetails {
  final String? name;
  final double? amount;
  final int? opening;
  final double? paymentAmount;
  final List<Move>? moves;
  final int? id;

  DefaultCashDetails({
    this.name,
    this.amount,
    this.opening,
    this.paymentAmount,
    this.moves,
    this.id,
  });

  factory DefaultCashDetails.fromRawJson(String str) => DefaultCashDetails.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory DefaultCashDetails.fromJson(Map<String, dynamic> json) => DefaultCashDetails(
    name: json["name"],
    amount: json["amount"]?.toDouble(),
    opening: json["opening"],
    paymentAmount: json["payment_amount"]?.toDouble(),
    moves: json["moves"] == null ? [] : List<Move>.from(json["moves"]!.map((x) => Move.fromJson(x))),
    id: json["id"],
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "amount": amount,
    "opening": opening,
    "payment_amount": paymentAmount,
    "moves": moves == null ? [] : List<dynamic>.from(moves!.map((x) => x.toJson())),
    "id": id,
  };
}

class Move {
  final String? name;
  final double? amount;

  Move({
    this.name,
    this.amount,
  });

  factory Move.fromRawJson(String str) => Move.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Move.fromJson(Map<String, dynamic> json) => Move(
    name: json["name"],
    amount: json["amount"]?.toDouble(),
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "amount": amount,
  };
}

class OrdersDetails {
  final int? quantity;
  final double? amount;

  OrdersDetails({
    this.quantity,
    this.amount,
  });

  factory OrdersDetails.fromRawJson(String str) => OrdersDetails.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory OrdersDetails.fromJson(Map<String, dynamic> json) => OrdersDetails(
    quantity: json["quantity"],
    amount: json["amount"]?.toDouble(),
  );

  Map<String, dynamic> toJson() => {
    "quantity": quantity,
    "amount": amount,
  };
}

class OtherPaymentMethod {
  final String? name;
  final int? amount;
  final int? number;
  final int? id;
  final String? type;

  OtherPaymentMethod({
    this.name,
    this.amount,
    this.number,
    this.id,
    this.type,
  });

  factory OtherPaymentMethod.fromRawJson(String str) => OtherPaymentMethod.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory OtherPaymentMethod.fromJson(Map<String, dynamic> json) => OtherPaymentMethod(
    name: json["name"],
    amount: json["amount"],
    number: json["number"],
    id: json["id"],
    type: json["type"],
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "amount": amount,
    "number": number,
    "id": id,
    "type": type,
  };
}
