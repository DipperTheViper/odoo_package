import 'dart:convert';
import '../../../odoo_package.dart';

class CreatePaymentFromUiRequest {
  final String? model;
  final String? method;
  final List<PaymentArgClass>? args;
  final Kwargs? kwargs;

  // final DateTime orderCreationDate;

  CreatePaymentFromUiRequest({
    this.model = "pos.order",
    this.method = "create_from_ui",
    // required this.orderCreationDate,
    this.args = const [
      PaymentArgClass(
          id: "0008-003-0001",
          toInvoice: false,
          data: PaymentData(
            name: "Order 0008-003-0001",
            amountPaid: 2587.5,
            amountTotal: 2587.5,
            amountTax: 337.5,
            amountReturn: 0,
            lines: [
              [
                0,
                0,
                LineClass(
                    uuid: "5cccc23f-2f2d-48d9-b862-0c78b89b9ce9",
                    skipChange: false,
                    customAttributeValueIds: [],
                    qty: 3,
                    priceUnit: 750,
                    priceSubtotal: 2250,
                    priceSubtotalIncl: 2587.5,
                    discount: 0,
                    productId: 133,
                    taxIds: [
                      [
                        6,
                        false,
                        [1]
                      ]
                    ],
                    id: 13,
                    packLotIds: [],
                    attributeValueIds: [],
                    fullProductName: "Customizable Desk (Custom, Black)",
                    priceExtra: 0,
                    priceType: "original",
                    note: "",
                    eWalletGiftCardProgramId: null)
              ]
            ],
            statementIds: [
              [
                0,
                0,
                StatementIdClass(
                    amount: 2587.5,
                    cardType: "",
                    cardholderName: "",
                    name: "2024-01-27 12:22:20",
                    paymentMethodId: 1,
                    paymentStatus: "",
                    terminalServiceId: null,
                    ticket: "",
                    transactionId: "")
              ]
            ],
            posSessionId: 7,
            pricelistId: false,
            partnerId: 1,
            userId: 2,
            uid: "00007-001-0006",
            sequenceNumber: 6,
            dateOrder: "2024-01-27 12:22:20",
            fiscalPositionId: false,
            serverId: false,
            toInvoice: false,
            shippingDate: false,
            isTipped: false,
            tipAmount: 0,
            accessToken: "9e1dcfc7-a3be-4c0a-b11e-acd58b7fe07c",
            lastOrderPreparationChange: "{}",
            ticketCode: "psoph",
            disabledRewards: [],
            codeActivatedProgramRules: [],
            codeActivatedCoupons: [],
            couponPointChanges: CouponPointChanges(),
          ))
    ],
    this.kwargs = const Kwargs(),
  });

  factory CreatePaymentFromUiRequest.fromRawJson(String str) =>
      CreatePaymentFromUiRequest.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory CreatePaymentFromUiRequest.fromJson(Map<String, dynamic> json) =>
      CreatePaymentFromUiRequest(
        model: json["model"],
        method: json["method"],
        args: json["args"] == null
            ? []
            : List<PaymentArgClass>.from(json["args"]!.map((x) => x)),
        kwargs: json["kwargs"] == null ? null : Kwargs.fromJson(json["kwargs"]),
      );

  Map<String, dynamic> toJson() => {
        "model": model,
        "method": method,
        "args": args == null ? [] : List<PaymentArgClass>.from(args!.map((x) => x)),
        "kwargs": kwargs?.toJson(),
      };
}

class PaymentArgClass {
  final String? id;
  final PaymentData? data;
  final bool? toInvoice;

  const PaymentArgClass({
    this.id,
    this.data,
    this.toInvoice,
  });

  factory PaymentArgClass.fromRawJson(String str) =>
      PaymentArgClass.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory PaymentArgClass.fromJson(Map<String, dynamic> json) => PaymentArgClass(
        id: json["id"],
        data: json["data"] == null ? null : PaymentData.fromJson(json["data"]),
        toInvoice: json["to_invoice"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "data": data?.toJson(),
        "to_invoice": toInvoice,
      };
}

class PaymentData {
  final String? name;
  final double? amountPaid;
  final double? amountTotal;
  final double? amountTax;
  final double? amountReturn;
  final List<List<dynamic>>? lines;
  final List<List<dynamic>>? statementIds;
  final int? posSessionId;
  final bool? pricelistId;
  final int? partnerId;
  final int? userId;
  final String? uid;
  final int? sequenceNumber;

  //TODO this field should be a datetime instead of string
  final String? dateOrder;
  final bool? fiscalPositionId;
  final bool? serverId;
  final bool? toInvoice;
  final bool? shippingDate;
  final bool? isTipped;
  final int? tipAmount;
  final String? accessToken;
  final String? lastOrderPreparationChange;
  final String? ticketCode;
  final List<dynamic>? disabledRewards;
  final List<dynamic>? codeActivatedProgramRules;
  final List<dynamic>? codeActivatedCoupons;

  final CouponPointChanges? couponPointChanges;

  const PaymentData({
    this.name,
    this.amountPaid,
    this.amountTotal,
    this.amountTax,
    this.amountReturn,
    this.lines,
    this.statementIds,
    this.posSessionId,
    this.pricelistId,
    this.partnerId,
    this.userId,
    this.uid,
    this.sequenceNumber,
    this.dateOrder,
    this.fiscalPositionId,
    this.serverId,
    this.toInvoice,
    this.shippingDate,
    this.isTipped,
    this.tipAmount,
    this.accessToken,
    this.lastOrderPreparationChange,
    this.ticketCode,
    this.disabledRewards,
    this.codeActivatedProgramRules,
    this.codeActivatedCoupons,
    this.couponPointChanges,
    // this.couponPointChanges,
  });

  factory PaymentData.fromRawJson(String str) =>
      PaymentData.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory PaymentData.fromJson(Map<String, dynamic> json) => PaymentData(
        name: json["name"],
        amountPaid: json["amount_paid"],
        amountTotal: json["amount_total"],
        amountTax: json["amount_tax"],
        amountReturn: json["amount_return"],
        lines: json["lines"] == null
            ? []
            : List<List<dynamic>>.from(
                json["lines"]!.map((x) => List<dynamic>.from(x.map((x) => x)))),
        statementIds: json["statement_ids"] == null
            ? []
            : List<List<dynamic>>.from(json["statement_ids"]!
                .map((x) => List<dynamic>.from(x.map((x) => x)))),
        posSessionId: json["pos_session_id"],
        pricelistId: json["pricelist_id"],
        partnerId: json["partner_id"],
        userId: json["user_id"],
        uid: json["uid"],
        sequenceNumber: json["sequence_number"],
        dateOrder: json["date_order"],

        // : DateTime.parse(json["date_order"]),
        fiscalPositionId: json["fiscal_position_id"],
        serverId: json["server_id"],
        toInvoice: json["to_invoice"],
        shippingDate: json["shipping_date"],
        isTipped: json["is_tipped"],
        tipAmount: json["tip_amount"],
        accessToken: json["access_token"],
        lastOrderPreparationChange: json["last_order_preparation_change"],
        ticketCode: json["ticket_code"],
        disabledRewards: json["disabledRewards"] == null
            ? []
            : List<dynamic>.from(json["disabledRewards"]!.map((x) => x)),
        codeActivatedProgramRules: json["codeActivatedProgramRules"] == null
            ? []
            : List<dynamic>.from(
                json["codeActivatedProgramRules"]!.map((x) => x)),
        codeActivatedCoupons: json["codeActivatedCoupons"] == null
            ? []
            : List<dynamic>.from(json["codeActivatedCoupons"]!.map((x) => x)),
        couponPointChanges: json["couponPointChanges"] == null
            ? null
            : CouponPointChanges.fromJson(json["couponPointChanges"]),
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "amount_paid": amountPaid,
        "amount_total": amountTotal,
        "amount_tax": amountTax,
        "amount_return": amountReturn,
        "lines": lines == null
            ? []
            : List<dynamic>.from(
                lines!.map((x) => List<dynamic>.from(x.map((x) => x)))),
        "statement_ids": statementIds == null
            ? []
            : List<dynamic>.from(
                statementIds!.map((x) => List<dynamic>.from(x.map((x) => x)))),
        "pos_session_id": posSessionId,
        "pricelist_id": pricelistId,
        "partner_id": partnerId,
        "user_id": userId,
        "uid": uid,
        "sequence_number": sequenceNumber,
        "date_order": dateOrder,
        //   "date_order": dateOrder?.toIso8601String(),
        "fiscal_position_id": fiscalPositionId,
        "server_id": serverId,
        "to_invoice": toInvoice,
        "shipping_date": shippingDate,
        "is_tipped": isTipped,
        "tip_amount": tipAmount,
        "access_token": accessToken,
        "last_order_preparation_change": lastOrderPreparationChange,
        "ticket_code": ticketCode,
        "disabledRewards": disabledRewards == null
            ? []
            : List<dynamic>.from(disabledRewards!.map((x) => x)),
        "codeActivatedProgramRules": codeActivatedProgramRules == null
            ? []
            : List<dynamic>.from(codeActivatedProgramRules!.map((x) => x)),
        "codeActivatedCoupons": codeActivatedCoupons == null
            ? []
            : List<dynamic>.from(codeActivatedCoupons!.map((x) => x)),
        "couponPointChanges": couponPointChanges?.toJson(),
      };
}

class CouponPointChanges {
  final The4? the4;
  final The4? the5;

  const CouponPointChanges({
    this.the4 =
        const The4(points: 1, programId: 5, couponId: -10, appliedRules: [5]),
    this.the5,
  });

  factory CouponPointChanges.fromRawJson(String str) =>
      CouponPointChanges.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory CouponPointChanges.fromJson(Map<String, dynamic> json) =>
      CouponPointChanges(
        the4: json["-4"] == null ? null : The4.fromJson(json["-4"]),
        the5: json["-5"] == null ? null : The4.fromJson(json["-5"]),
      );

  Map<String, dynamic> toJson() => {
        "-4": the4?.toJson(),
        "-5": the5?.toJson(),
      };
}

class The4 {
  final int? points;
  final int? programId;
  final int? couponId;
  final List<int>? appliedRules;

  const The4({
    this.points,
    this.programId,
    this.couponId,
    this.appliedRules,
  });

  factory The4.fromRawJson(String str) => The4.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory The4.fromJson(Map<String, dynamic> json) => The4(
        points: json["points"],
        programId: json["program_id"],
        couponId: json["coupon_id"],
        appliedRules: json["appliedRules"] == null
            ? []
            : List<int>.from(json["appliedRules"]!.map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "points": points,
        "program_id": programId,
        "coupon_id": couponId,
        "appliedRules": appliedRules == null
            ? []
            : List<dynamic>.from(appliedRules!.map((x) => x)),
      };
}

class LineClass {
  final String? uuid;
  final bool? skipChange;
  final List<dynamic>? customAttributeValueIds;
  final int? qty;
  final int? priceUnit;
  final double? priceSubtotal;
  final double? priceSubtotalIncl;
  final int? discount;
  final int? productId;
  final List<List<dynamic>>? taxIds;
  final int? id;
  final List<dynamic>? packLotIds;
  final List<dynamic>? attributeValueIds;
  final String? fullProductName;
  final int? priceExtra;
  final String? priceType;
  final String? note;
  final dynamic eWalletGiftCardProgramId;

  const LineClass({
    this.uuid,
    this.skipChange,
    this.customAttributeValueIds,
    this.qty,
    this.priceUnit,
    this.priceSubtotal,
    this.priceSubtotalIncl,
    this.discount,
    this.productId,
    this.taxIds,
    this.id,
    this.packLotIds,
    this.attributeValueIds,
    this.fullProductName,
    this.priceExtra,
    this.priceType,
    this.note,
    this.eWalletGiftCardProgramId,
  });

  factory LineClass.fromRawJson(String str) =>
      LineClass.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory LineClass.fromJson(Map<String, dynamic> json) => LineClass(
        uuid: json["uuid"],
        skipChange: json["skip_change"],
        customAttributeValueIds: json["custom_attribute_value_ids"] == null
            ? []
            : List<dynamic>.from(
                json["custom_attribute_value_ids"]!.map((x) => x)),
        qty: json["qty"],
        priceUnit: json["price_unit"],
        priceSubtotal: json["price_subtotal"],
        priceSubtotalIncl: json["price_subtotal_incl"],
        discount: json["discount"],
        productId: json["product_id"],
        taxIds: json["tax_ids"] == null
            ? []
            : List<List<dynamic>>.from(json["tax_ids"]!
                .map((x) => List<dynamic>.from(x.map((x) => x)))),
        id: json["id"],
        packLotIds: json["pack_lot_ids"] == null
            ? []
            : List<dynamic>.from(json["pack_lot_ids"]!.map((x) => x)),
        attributeValueIds: json["attribute_value_ids"] == null
            ? []
            : List<dynamic>.from(json["attribute_value_ids"]!.map((x) => x)),
        fullProductName: json["full_product_name"],
        priceExtra: json["price_extra"],
        priceType: json["price_type"],
        note: json["note"],
        eWalletGiftCardProgramId: json["eWalletGiftCardProgramId"],
      );

  Map<String, dynamic> toJson() => {
        "uuid": uuid,
        "skip_change": skipChange,
        "custom_attribute_value_ids": customAttributeValueIds == null
            ? []
            : List<dynamic>.from(customAttributeValueIds!.map((x) => x)),
        "qty": qty,
        "price_unit": priceUnit,
        "price_subtotal": priceSubtotal,
        "price_subtotal_incl": priceSubtotalIncl,
        "discount": discount,
        "product_id": productId,
        "tax_ids": taxIds == null
            ? []
            : List<dynamic>.from(
                taxIds!.map((x) => List<dynamic>.from(x.map((x) => x)))),
        "id": id,
        "pack_lot_ids": packLotIds == null
            ? []
            : List<dynamic>.from(packLotIds!.map((x) => x)),
        "attribute_value_ids": attributeValueIds == null
            ? []
            : List<dynamic>.from(attributeValueIds!.map((x) => x)),
        "full_product_name": fullProductName,
        "price_extra": priceExtra,
        "price_type": priceType,
        "note": note,
        "eWalletGiftCardProgramId": eWalletGiftCardProgramId,
      };
}

class StatementIdClass {
  final String? name;
  final int? paymentMethodId;
  final double? amount;
  final String? paymentStatus;
  final String? ticket;
  final String? cardType;
  final String? cardholderName;
  final String? transactionId;
  final dynamic terminalServiceId;

  const StatementIdClass({
    this.name,
    this.paymentMethodId,
    this.amount,
    this.paymentStatus,
    this.ticket,
    this.cardType,
    this.cardholderName,
    this.transactionId,
    this.terminalServiceId,
  });

  factory StatementIdClass.fromRawJson(String str) =>
      StatementIdClass.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory StatementIdClass.fromJson(Map<String, dynamic> json) =>
      StatementIdClass(
        name: json["name"],
        paymentMethodId: json["payment_method_id"],
        amount: json["amount"],
        paymentStatus: json["payment_status"],
        ticket: json["ticket"],
        cardType: json["card_type"],
        cardholderName: json["cardholder_name"],
        transactionId: json["transaction_id"],
        terminalServiceId: json["terminal_service_id"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "payment_method_id": paymentMethodId,
        "amount": amount,
        "payment_status": paymentStatus,
        "ticket": ticket,
        "card_type": cardType,
        "cardholder_name": cardholderName,
        "transaction_id": transactionId,
        "terminal_service_id": terminalServiceId,
      };
}
