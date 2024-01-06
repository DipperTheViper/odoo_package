import 'dart:convert';

import '../general/account_tax.dart';
import '../general/attribute.dart';
import '../general/decimal.dart';
import '../general/field_type.dart';
import '../general/loyalty.dart';
import '../general/pos.dart';
import '../general/product.dart';
import '../general/res.dart';
import '../general/stock_picking_type.dart';
import '../general/taxes_by_id.dart';
import '../general/units_by_id.dart';
import '../general/uom_uom.dart';
import '../general/version.dart';

class LoadPosDataResponseModel {
  final String? jsonrpc;
  final String? id;
  final Result? result;

  LoadPosDataResponseModel({
    this.jsonrpc,
    this.id,
    this.result,
  });

  factory LoadPosDataResponseModel.fromJson(String str) =>
      LoadPosDataResponseModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory LoadPosDataResponseModel.fromMap(Map<String, dynamic> json) =>
      LoadPosDataResponseModel(
        jsonrpc: json["jsonrpc"],
        id: json["id"],
        result: json["result"] == null ? null : Result.fromMap(json["result"]),
      );

  Map<String, dynamic> toMap() => {
        "jsonrpc": jsonrpc,
        "id": id,
        "result": result?.toMap(),
      };
}

class Result {
  final ResCompany? resCompany;
  final DecimalPrecision? decimalPrecision;
  final List<UomUom>? uomUom;
  final List<ResCountryState>? resCountryState;
  final List<ResCountry>? resCountry;
  final List<ResLang>? resLang;
  final List<AccountTax>? accountTax;
  final PosSession? posSession;
  final PosConfig? posConfig;
  final List<dynamic>? posPrinter;
  final List<PosBill>? posBill;
  final List<ResPartner>? resPartner;
  final StockPickingType? stockPickingType;
  final ResUsers? resUsers;
  final List<ProductProductElement>? productProduct;
  final List<dynamic>? productPricelist;
  final ResCurrency? resCurrency;
  final List<PosCategory>? posCategory;
  final List<PosCombo>? posCombo;
  final List<PosComboLine>? posComboLine;
  final List<dynamic>? productPackaging;
  final List<dynamic>? accountCashRounding;
  final List<PosPaymentMethod>? posPaymentMethod;
  final List<dynamic>? accountFiscalPosition;
  final List<LoyaltyProgram>? loyaltyProgram;
  final List<LoyaltyRule>? loyaltyRule;
  final List<LoyaltyReward>? loyaltyReward;
  final Version? version;
  final UnitsById? unitsById;
  final TaxesById? taxesById;
  final AttributesByPtalId? attributesByPtalId;
  final String? baseUrl;
  final bool? posHasValidProduct;
  final List<int>? posSpecialProductsIds;
  final List<dynamic>? openOrders;
  final List<String>? partnerCommercialFields;
  final ProductIdToProgramIds? productIdToProgramIds;
  final FieldTypes? fieldTypes;
  final bool? companyHasSelfOrdering;

  Result({
    this.resCompany,
    this.decimalPrecision,
    this.uomUom,
    this.resCountryState,
    this.resCountry,
    this.resLang,
    this.accountTax,
    this.posSession,
    this.posConfig,
    this.posPrinter,
    this.posBill,
    this.resPartner,
    this.stockPickingType,
    this.resUsers,
    this.productProduct,
    this.productPricelist,
    this.resCurrency,
    this.posCategory,
    this.posCombo,
    this.posComboLine,
    this.productPackaging,
    this.accountCashRounding,
    this.posPaymentMethod,
    this.accountFiscalPosition,
    this.loyaltyProgram,
    this.loyaltyRule,
    this.loyaltyReward,
    this.version,
    this.unitsById,
    this.taxesById,
    this.attributesByPtalId,
    this.baseUrl,
    this.posHasValidProduct,
    this.posSpecialProductsIds,
    this.openOrders,
    this.partnerCommercialFields,
    this.productIdToProgramIds,
    this.fieldTypes,
    this.companyHasSelfOrdering,
  });

  factory Result.fromJson(String str) => Result.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Result.fromMap(Map<String, dynamic> json) => Result(
        resCompany: json["res.company"] == null
            ? null
            : ResCompany.fromMap(json["res.company"]),
        decimalPrecision: json["decimal.precision"] == null
            ? null
            : DecimalPrecision.fromMap(json["decimal.precision"]),
        uomUom: json["uom.uom"] == null
            ? []
            : List<UomUom>.from(json["uom.uom"]!.map((x) => UomUom.fromMap(x))),
        resCountryState: json["res.country.state"] == null
            ? []
            : List<ResCountryState>.from(json["res.country.state"]!
                .map((x) => ResCountryState.fromMap(x))),
        resCountry: json["res.country"] == null
            ? []
            : List<ResCountry>.from(
                json["res.country"]!.map((x) => ResCountry.fromMap(x))),
        resLang: json["res.lang"] == null
            ? []
            : List<ResLang>.from(
                json["res.lang"]!.map((x) => ResLang.fromMap(x))),
        accountTax: json["account.tax"] == null
            ? []
            : List<AccountTax>.from(
                json["account.tax"]!.map((x) => AccountTax.fromMap(x))),
        posSession: json["pos.session"] == null
            ? null
            : PosSession.fromMap(json["pos.session"]),
        posConfig: json["pos.config"] == null
            ? null
            : PosConfig.fromMap(json["pos.config"]),
        posPrinter: json["pos.printer"] == null
            ? []
            : List<dynamic>.from(json["pos.printer"]!.map((x) => x)),
        posBill: json["pos.bill"] == null
            ? []
            : List<PosBill>.from(
                json["pos.bill"]!.map((x) => PosBill.fromMap(x))),
        resPartner: json["res.partner"] == null
            ? []
            : List<ResPartner>.from(
                json["res.partner"]!.map((x) => ResPartner.fromMap(x))),
        stockPickingType: json["stock.picking.type"] == null
            ? null
            : StockPickingType.fromMap(json["stock.picking.type"]),
        resUsers: json["res.users"] == null
            ? null
            : ResUsers.fromMap(json["res.users"]),
        productProduct: json["product.product"] == null
            ? []
            : List<ProductProductElement>.from(json["product.product"]!
                .map((x) => ProductProductElement.fromMap(x))),
        productPricelist: json["product.pricelist"] == null
            ? []
            : List<dynamic>.from(json["product.pricelist"]!.map((x) => x)),
        resCurrency: json["res.currency"] == null
            ? null
            : ResCurrency.fromMap(json["res.currency"]),
        posCategory: json["pos.category"] == null
            ? []
            : List<PosCategory>.from(
                json["pos.category"]!.map((x) => PosCategory.fromMap(x))),
        posCombo: json["pos.combo"] == null
            ? []
            : List<PosCombo>.from(
                json["pos.combo"]!.map((x) => PosCombo.fromMap(x))),
        posComboLine: json["pos.combo.line"] == null
            ? []
            : List<PosComboLine>.from(
                json["pos.combo.line"]!.map((x) => PosComboLine.fromMap(x))),
        productPackaging: json["product.packaging"] == null
            ? []
            : List<dynamic>.from(json["product.packaging"]!.map((x) => x)),
        accountCashRounding: json["account.cash.rounding"] == null
            ? []
            : List<dynamic>.from(json["account.cash.rounding"]!.map((x) => x)),
        posPaymentMethod: json["pos.payment.method"] == null
            ? []
            : List<PosPaymentMethod>.from(json["pos.payment.method"]!
                .map((x) => PosPaymentMethod.fromMap(x))),
        accountFiscalPosition: json["account.fiscal.position"] == null
            ? []
            : List<dynamic>.from(
                json["account.fiscal.position"]!.map((x) => x)),
        loyaltyProgram: json["loyalty.program"] == null
            ? []
            : List<LoyaltyProgram>.from(
                json["loyalty.program"]!.map((x) => LoyaltyProgram.fromMap(x))),
        loyaltyRule: json["loyalty.rule"] == null
            ? []
            : List<LoyaltyRule>.from(
                json["loyalty.rule"]!.map((x) => LoyaltyRule.fromMap(x))),
        loyaltyReward: json["loyalty.reward"] == null
            ? []
            : List<LoyaltyReward>.from(
                json["loyalty.reward"]!.map((x) => LoyaltyReward.fromMap(x))),
        version:
            json["version"] == null ? null : Version.fromMap(json["version"]),
        unitsById: json["units_by_id"] == null
            ? null
            : UnitsById.fromMap(json["units_by_id"]),
        taxesById: json["taxes_by_id"] == null
            ? null
            : TaxesById.fromMap(json["taxes_by_id"]),
        attributesByPtalId: json["attributes_by_ptal_id"] == null
            ? null
            : AttributesByPtalId.fromMap(json["attributes_by_ptal_id"]),
        baseUrl: json["base_url"],
        posHasValidProduct: json["pos_has_valid_product"],
        posSpecialProductsIds: json["pos_special_products_ids"] == null
            ? []
            : List<int>.from(json["pos_special_products_ids"]!.map((x) => x)),
        openOrders: json["open_orders"] == null
            ? []
            : List<dynamic>.from(json["open_orders"]!.map((x) => x)),
        partnerCommercialFields: json["partner_commercial_fields"] == null
            ? []
            : List<String>.from(
                json["partner_commercial_fields"]!.map((x) => x)),
        productIdToProgramIds: json["product_id_to_program_ids"] == null
            ? null
            : ProductIdToProgramIds.fromMap(json["product_id_to_program_ids"]),
        fieldTypes: json["field_types"] == null
            ? null
            : FieldTypes.fromMap(json["field_types"]),
        companyHasSelfOrdering: json["company_has_self_ordering"],
      );

  Map<String, dynamic> toMap() => {
        "res.company": resCompany?.toMap(),
        "decimal.precision": decimalPrecision?.toMap(),
        "uom.uom": uomUom == null
            ? []
            : List<dynamic>.from(uomUom!.map((x) => x.toMap())),
        "res.country.state": resCountryState == null
            ? []
            : List<dynamic>.from(resCountryState!.map((x) => x.toMap())),
        "res.country": resCountry == null
            ? []
            : List<dynamic>.from(resCountry!.map((x) => x.toMap())),
        "res.lang": resLang == null
            ? []
            : List<dynamic>.from(resLang!.map((x) => x.toMap())),
        "account.tax": accountTax == null
            ? []
            : List<dynamic>.from(accountTax!.map((x) => x.toMap())),
        "pos.session": posSession?.toMap(),
        "pos.config": posConfig?.toMap(),
        "pos.printer": posPrinter == null
            ? []
            : List<dynamic>.from(posPrinter!.map((x) => x)),
        "pos.bill": posBill == null
            ? []
            : List<dynamic>.from(posBill!.map((x) => x.toMap())),
        "res.partner": resPartner == null
            ? []
            : List<dynamic>.from(resPartner!.map((x) => x.toMap())),
        "stock.picking.type": stockPickingType?.toMap(),
        "res.users": resUsers?.toMap(),
        "product.product": productProduct == null
            ? []
            : List<dynamic>.from(productProduct!.map((x) => x.toMap())),
        "product.pricelist": productPricelist == null
            ? []
            : List<dynamic>.from(productPricelist!.map((x) => x)),
        "res.currency": resCurrency?.toMap(),
        "pos.category": posCategory == null
            ? []
            : List<dynamic>.from(posCategory!.map((x) => x.toMap())),
        "pos.combo": posCombo == null
            ? []
            : List<dynamic>.from(posCombo!.map((x) => x.toMap())),
        "pos.combo.line": posComboLine == null
            ? []
            : List<dynamic>.from(posComboLine!.map((x) => x.toMap())),
        "product.packaging": productPackaging == null
            ? []
            : List<dynamic>.from(productPackaging!.map((x) => x)),
        "account.cash.rounding": accountCashRounding == null
            ? []
            : List<dynamic>.from(accountCashRounding!.map((x) => x)),
        "pos.payment.method": posPaymentMethod == null
            ? []
            : List<dynamic>.from(posPaymentMethod!.map((x) => x.toMap())),
        "account.fiscal.position": accountFiscalPosition == null
            ? []
            : List<dynamic>.from(accountFiscalPosition!.map((x) => x)),
        "loyalty.program": loyaltyProgram == null
            ? []
            : List<dynamic>.from(loyaltyProgram!.map((x) => x.toMap())),
        "loyalty.rule": loyaltyRule == null
            ? []
            : List<dynamic>.from(loyaltyRule!.map((x) => x.toMap())),
        "loyalty.reward": loyaltyReward == null
            ? []
            : List<dynamic>.from(loyaltyReward!.map((x) => x.toMap())),
        "version": version?.toMap(),
        "units_by_id": unitsById?.toMap(),
        "taxes_by_id": taxesById?.toMap(),
        "attributes_by_ptal_id": attributesByPtalId?.toMap(),
        "base_url": baseUrl,
        "pos_has_valid_product": posHasValidProduct,
        "pos_special_products_ids": posSpecialProductsIds == null
            ? []
            : List<dynamic>.from(posSpecialProductsIds!.map((x) => x)),
        "open_orders": openOrders == null
            ? []
            : List<dynamic>.from(openOrders!.map((x) => x)),
        "partner_commercial_fields": partnerCommercialFields == null
            ? []
            : List<dynamic>.from(partnerCommercialFields!.map((x) => x)),
        "product_id_to_program_ids": productIdToProgramIds?.toMap(),
        "field_types": fieldTypes?.toMap(),
        "company_has_self_ordering": companyHasSelfOrdering,
      };
}
