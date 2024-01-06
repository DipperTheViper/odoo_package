import 'dart:convert';

class PosBill {
  final int? id;
  final String? name;
  final double? value;

  PosBill({
    this.id,
    this.name,
    this.value,
  });

  factory PosBill.fromJson(String str) => PosBill.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory PosBill.fromMap(Map<String, dynamic> json) => PosBill(
        id: json["id"],
        name: json["name"],
        value: json["value"]?.toDouble(),
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "name": name,
        "value": value,
      };
}

class PosCategory {
  final int? id;
  final String? name;
  final bool? parentId;
  final List<dynamic>? childId;
  final String? writeDate;
  final bool? hasImage;

  PosCategory({
    this.id,
    this.name,
    this.parentId,
    this.childId,
    this.writeDate,
    this.hasImage,
  });

  factory PosCategory.fromJson(String str) =>
      PosCategory.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory PosCategory.fromMap(Map<String, dynamic> json) => PosCategory(
        id: json["id"],
        name: json["name"],
        parentId: json["parent_id"],
        childId: json["child_id"] == null
            ? []
            : List<dynamic>.from(json["child_id"]!.map((x) => x)),
        writeDate: json["write_date"],
        hasImage: json["has_image"],
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "name": name,
        "parent_id": parentId,
        "child_id":
            childId == null ? [] : List<dynamic>.from(childId!.map((x) => x)),
        "write_date": writeDate,
        "has_image": hasImage,
      };
}

class PosCombo {
  final int? id;
  final String? name;
  final List<int>? comboLineIds;
  final double? basePrice;

  PosCombo({
    this.id,
    this.name,
    this.comboLineIds,
    this.basePrice,
  });

  factory PosCombo.fromJson(String str) => PosCombo.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory PosCombo.fromMap(Map<String, dynamic> json) => PosCombo(
        id: json["id"],
        name: json["name"],
        comboLineIds: json["combo_line_ids"] == null
            ? []
            : List<int>.from(json["combo_line_ids"]!.map((x) => x)),
        basePrice: json["base_price"]?.toDouble(),
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "name": name,
        "combo_line_ids": comboLineIds == null
            ? []
            : List<dynamic>.from(comboLineIds!.map((x) => x)),
        "base_price": basePrice,
      };
}

class PosComboLine {
  final int? id;
  final List<dynamic>? productId;
  final double? comboPrice;
  final List<dynamic>? comboId;

  PosComboLine({
    this.id,
    this.productId,
    this.comboPrice,
    this.comboId,
  });

  factory PosComboLine.fromJson(String str) =>
      PosComboLine.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory PosComboLine.fromMap(Map<String, dynamic> json) => PosComboLine(
        id: json["id"],
        productId: json["product_id"] == null
            ? []
            : List<dynamic>.from(json["product_id"]!.map((x) => x)),
        comboPrice: json["combo_price"],
        comboId: json["combo_id"] == null
            ? []
            : List<dynamic>.from(json["combo_id"]!.map((x) => x)),
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "product_id": productId == null
            ? []
            : List<dynamic>.from(productId!.map((x) => x)),
        "combo_price": comboPrice,
        "combo_id":
            comboId == null ? [] : List<dynamic>.from(comboId!.map((x) => x)),
      };
}

class PosConfig {
  final int? id;
  final String? name;
  final List<dynamic>? printerIds;
  final bool? isOrderPrinter;
  final bool? isInstalledAccountAccountant;
  final List<dynamic>? pickingTypeId;
  final List<dynamic>? journalId;
  final List<dynamic>? invoiceJournalId;
  final List<dynamic>? currencyId;
  final bool? ifaceCashdrawer;
  final bool? ifaceElectronicScale;
  final bool? ifaceCustomerFacingDisplay;
  final bool? ifaceCustomerFacingDisplayViaProxy;
  final bool? ifaceCustomerFacingDisplayLocal;
  final bool? ifaceCustomerFacingDisplayBackgroundImage1920;
  final bool? ifacePrintViaProxy;
  final bool? ifaceScanViaProxy;
  final bool? ifaceBigScrollbars;
  final bool? ifacePrintAuto;
  final bool? ifacePrintSkipScreen;
  final String? ifaceTaxIncluded;
  final List<dynamic>? ifaceStartCategId;
  final List<int>? ifaceAvailableCategIds;
  final bool? restrictPriceControl;
  final bool? isMarginsCostsAccessibleToEveryUser;
  final bool? cashControl;
  final bool? setMaximumDifference;
  final bool? receiptHeader;
  final bool? receiptFooter;
  final bool? proxyIp;
  final bool? active;
  final String? uuid;
  final List<dynamic>? sequenceId;
  final List<dynamic>? sequenceLineId;
  final List<int>? sessionIds;
  final List<dynamic>? currentSessionId;
  final String? currentSessionState;
  final int? numberOfRescueSession;
  final double? lastSessionClosingCash;
  final DateTime? lastSessionClosingDate;
  final String? posSessionUsername;
  final String? posSessionState;
  final String? posSessionDuration;
  final bool? pricelistId;
  final List<dynamic>? availablePricelistIds;
  final List<dynamic>? companyId;
  final List<dynamic>? groupPosManagerId;
  final List<dynamic>? groupPosUserId;
  final bool? ifaceTipproduct;
  final List<dynamic>? tipProductId;
  final List<dynamic>? fiscalPositionIds;
  final bool? defaultFiscalPositionId;
  final List<dynamic>? defaultBillIds;
  final bool? usePricelist;
  final bool? taxRegimeSelection;
  final bool? startCategory;
  final bool? limitCategories;
  final bool? modulePosRestaurant;
  final bool? modulePosDiscount;
  final bool? modulePosMercury;
  final bool? isPosbox;
  final bool? isHeaderOrFooter;
  final bool? modulePosHr;
  final double? amountAuthorizedDiff;
  final List<int>? paymentMethodIds;
  final bool? companyHasTemplate;
  final List<dynamic>? currentUserId;
  final bool? otherDevices;
  final bool? roundingMethod;
  final bool? cashRounding;
  final bool? onlyRoundCashMethod;
  final bool? hasActiveSession;
  final bool? manualDiscount;
  final bool? shipLater;
  final List<dynamic>? warehouseId;
  final bool? routeId;
  final String? pickingPolicy;
  final bool? autoValidateTerminalPayment;
  final List<dynamic>? trustedConfigIds;
  final String? displayName;
  final List<dynamic>? createUid;
  final String? createDate;
  final List<dynamic>? writeUid;
  final String? writeDate;
  final bool? adyenAskCustomerForTip;
  final bool? ifaceDiscount;
  final double? discountPc;
  final bool? discountProductId;
  final bool? epsonPrinterIp;
  final List<dynamic>? basicEmployeeIds;
  final List<dynamic>? advancedEmployeeIds;
  final String? giftCardSettings;
  final bool? ifaceSplitbill;
  final bool? ifacePrintbill;
  final bool? ifaceOrderlineNotes;
  final List<dynamic>? floorIds;
  final bool? setTipAfterPayment;
  final bool? modulePosRestaurantAppointment;
  final bool? crmTeamId;
  final List<dynamic>? downPaymentProductId;
  final String? status;
  final String? selfOrderingUrl;
  final bool? selfOrderingTakeaway;
  final bool? selfOrderingAlternativeFpId;
  final String? selfOrderingMode;
  final String? selfOrderingServiceMode;
  final bool? selfOrderingDefaultLanguageId;
  final List<dynamic>? selfOrderingAvailableLanguageIds;
  final List<dynamic>? selfOrderingImageHomeIds;
  final List<dynamic>? selfOrderingDefaultUserId;
  final String? selfOrderingPayAfter;
  final bool? selfOrderingImageBrand;
  final bool? selfOrderingImageBrandName;
  final String? accessToken;
  final bool? selfOrderOnlinePaymentMethodId;
  final bool? useProxy;
  final bool? hasCashMovePermission;

  PosConfig({
    this.id,
    this.name,
    this.printerIds,
    this.isOrderPrinter,
    this.isInstalledAccountAccountant,
    this.pickingTypeId,
    this.journalId,
    this.invoiceJournalId,
    this.currencyId,
    this.ifaceCashdrawer,
    this.ifaceElectronicScale,
    this.ifaceCustomerFacingDisplay,
    this.ifaceCustomerFacingDisplayViaProxy,
    this.ifaceCustomerFacingDisplayLocal,
    this.ifaceCustomerFacingDisplayBackgroundImage1920,
    this.ifacePrintViaProxy,
    this.ifaceScanViaProxy,
    this.ifaceBigScrollbars,
    this.ifacePrintAuto,
    this.ifacePrintSkipScreen,
    this.ifaceTaxIncluded,
    this.ifaceStartCategId,
    this.ifaceAvailableCategIds,
    this.restrictPriceControl,
    this.isMarginsCostsAccessibleToEveryUser,
    this.cashControl,
    this.setMaximumDifference,
    this.receiptHeader,
    this.receiptFooter,
    this.proxyIp,
    this.active,
    this.uuid,
    this.sequenceId,
    this.sequenceLineId,
    this.sessionIds,
    this.currentSessionId,
    this.currentSessionState,
    this.numberOfRescueSession,
    this.lastSessionClosingCash,
    this.lastSessionClosingDate,
    this.posSessionUsername,
    this.posSessionState,
    this.posSessionDuration,
    this.pricelistId,
    this.availablePricelistIds,
    this.companyId,
    this.groupPosManagerId,
    this.groupPosUserId,
    this.ifaceTipproduct,
    this.tipProductId,
    this.fiscalPositionIds,
    this.defaultFiscalPositionId,
    this.defaultBillIds,
    this.usePricelist,
    this.taxRegimeSelection,
    this.startCategory,
    this.limitCategories,
    this.modulePosRestaurant,
    this.modulePosDiscount,
    this.modulePosMercury,
    this.isPosbox,
    this.isHeaderOrFooter,
    this.modulePosHr,
    this.amountAuthorizedDiff,
    this.paymentMethodIds,
    this.companyHasTemplate,
    this.currentUserId,
    this.otherDevices,
    this.roundingMethod,
    this.cashRounding,
    this.onlyRoundCashMethod,
    this.hasActiveSession,
    this.manualDiscount,
    this.shipLater,
    this.warehouseId,
    this.routeId,
    this.pickingPolicy,
    this.autoValidateTerminalPayment,
    this.trustedConfigIds,
    this.displayName,
    this.createUid,
    this.createDate,
    this.writeUid,
    this.writeDate,
    this.adyenAskCustomerForTip,
    this.ifaceDiscount,
    this.discountPc,
    this.discountProductId,
    this.epsonPrinterIp,
    this.basicEmployeeIds,
    this.advancedEmployeeIds,
    this.giftCardSettings,
    this.ifaceSplitbill,
    this.ifacePrintbill,
    this.ifaceOrderlineNotes,
    this.floorIds,
    this.setTipAfterPayment,
    this.modulePosRestaurantAppointment,
    this.crmTeamId,
    this.downPaymentProductId,
    this.status,
    this.selfOrderingUrl,
    this.selfOrderingTakeaway,
    this.selfOrderingAlternativeFpId,
    this.selfOrderingMode,
    this.selfOrderingServiceMode,
    this.selfOrderingDefaultLanguageId,
    this.selfOrderingAvailableLanguageIds,
    this.selfOrderingImageHomeIds,
    this.selfOrderingDefaultUserId,
    this.selfOrderingPayAfter,
    this.selfOrderingImageBrand,
    this.selfOrderingImageBrandName,
    this.accessToken,
    this.selfOrderOnlinePaymentMethodId,
    this.useProxy,
    this.hasCashMovePermission,
  });

  factory PosConfig.fromJson(String str) => PosConfig.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory PosConfig.fromMap(Map<String, dynamic> json) => PosConfig(
        id: json["id"],
        name: json["name"],
        printerIds: json["printer_ids"] == null
            ? []
            : List<dynamic>.from(json["printer_ids"]!.map((x) => x)),
        isOrderPrinter: json["is_order_printer"],
        isInstalledAccountAccountant: json["is_installed_account_accountant"],
        pickingTypeId: json["picking_type_id"] == null
            ? []
            : List<dynamic>.from(json["picking_type_id"]!.map((x) => x)),
        journalId: json["journal_id"] == null
            ? []
            : List<dynamic>.from(json["journal_id"]!.map((x) => x)),
        invoiceJournalId: json["invoice_journal_id"] == null
            ? []
            : List<dynamic>.from(json["invoice_journal_id"]!.map((x) => x)),
        currencyId: json["currency_id"] == null
            ? []
            : List<dynamic>.from(json["currency_id"]!.map((x) => x)),
        ifaceCashdrawer: json["iface_cashdrawer"],
        ifaceElectronicScale: json["iface_electronic_scale"],
        ifaceCustomerFacingDisplay: json["iface_customer_facing_display"],
        ifaceCustomerFacingDisplayViaProxy:
            json["iface_customer_facing_display_via_proxy"],
        ifaceCustomerFacingDisplayLocal:
            json["iface_customer_facing_display_local"],
        ifaceCustomerFacingDisplayBackgroundImage1920:
            json["iface_customer_facing_display_background_image_1920"],
        ifacePrintViaProxy: json["iface_print_via_proxy"],
        ifaceScanViaProxy: json["iface_scan_via_proxy"],
        ifaceBigScrollbars: json["iface_big_scrollbars"],
        ifacePrintAuto: json["iface_print_auto"],
        ifacePrintSkipScreen: json["iface_print_skip_screen"],
        ifaceTaxIncluded: json["iface_tax_included"],
        ifaceStartCategId: json["iface_start_categ_id"] == null
            ? []
            : List<dynamic>.from(json["iface_start_categ_id"]!.map((x) => x)),
        ifaceAvailableCategIds: json["iface_available_categ_ids"] == null
            ? []
            : List<int>.from(json["iface_available_categ_ids"]!.map((x) => x)),
        restrictPriceControl: json["restrict_price_control"],
        isMarginsCostsAccessibleToEveryUser:
            json["is_margins_costs_accessible_to_every_user"],
        cashControl: json["cash_control"],
        setMaximumDifference: json["set_maximum_difference"],
        receiptHeader: json["receipt_header"],
        receiptFooter: json["receipt_footer"],
        proxyIp: json["proxy_ip"],
        active: json["active"],
        uuid: json["uuid"],
        sequenceId: json["sequence_id"] == null
            ? []
            : List<dynamic>.from(json["sequence_id"]!.map((x) => x)),
        sequenceLineId: json["sequence_line_id"] == null
            ? []
            : List<dynamic>.from(json["sequence_line_id"]!.map((x) => x)),
        sessionIds: json["session_ids"] == null
            ? []
            : List<int>.from(json["session_ids"]!.map((x) => x)),
        currentSessionId: json["current_session_id"] == null
            ? []
            : List<dynamic>.from(json["current_session_id"]!.map((x) => x)),
        currentSessionState: json["current_session_state"],
        numberOfRescueSession: json["number_of_rescue_session"],
        lastSessionClosingCash: json["last_session_closing_cash"],
        lastSessionClosingDate: json["last_session_closing_date"] == null
            ? null
            : DateTime.parse(json["last_session_closing_date"]),
        posSessionUsername: json["pos_session_username"],
        posSessionState: json["pos_session_state"],
        posSessionDuration: json["pos_session_duration"],
        pricelistId: json["pricelist_id"],
        availablePricelistIds: json["available_pricelist_ids"] == null
            ? []
            : List<dynamic>.from(
                json["available_pricelist_ids"]!.map((x) => x)),
        companyId: json["company_id"] == null
            ? []
            : List<dynamic>.from(json["company_id"]!.map((x) => x)),
        groupPosManagerId: json["group_pos_manager_id"] == null
            ? []
            : List<dynamic>.from(json["group_pos_manager_id"]!.map((x) => x)),
        groupPosUserId: json["group_pos_user_id"] == null
            ? []
            : List<dynamic>.from(json["group_pos_user_id"]!.map((x) => x)),
        ifaceTipproduct: json["iface_tipproduct"],
        tipProductId: json["tip_product_id"],
        fiscalPositionIds: json["fiscal_position_ids"] == null
            ? []
            : List<dynamic>.from(json["fiscal_position_ids"]!.map((x) => x)),
        defaultFiscalPositionId: json["default_fiscal_position_id"],
        defaultBillIds: json["default_bill_ids"] == null
            ? []
            : List<dynamic>.from(json["default_bill_ids"]!.map((x) => x)),
        usePricelist: json["use_pricelist"],
        taxRegimeSelection: json["tax_regime_selection"],
        startCategory: json["start_category"],
        limitCategories: json["limit_categories"],
        modulePosRestaurant: json["module_pos_restaurant"],
        modulePosDiscount: json["module_pos_discount"],
        modulePosMercury: json["module_pos_mercury"],
        isPosbox: json["is_posbox"],
        isHeaderOrFooter: json["is_header_or_footer"],
        modulePosHr: json["module_pos_hr"],
        amountAuthorizedDiff: json["amount_authorized_diff"],
        paymentMethodIds: json["payment_method_ids"] == null
            ? []
            : List<int>.from(json["payment_method_ids"]!.map((x) => x)),
        companyHasTemplate: json["company_has_template"],
        currentUserId: json["current_user_id"] == null
            ? []
            : List<dynamic>.from(json["current_user_id"]!.map((x) => x)),
        otherDevices: json["other_devices"],
        roundingMethod: json["rounding_method"],
        cashRounding: json["cash_rounding"],
        onlyRoundCashMethod: json["only_round_cash_method"],
        hasActiveSession: json["has_active_session"],
        manualDiscount: json["manual_discount"],
        shipLater: json["ship_later"],
        warehouseId: json["warehouse_id"] == null
            ? []
            : List<dynamic>.from(json["warehouse_id"]!.map((x) => x)),
        routeId: json["route_id"],
        pickingPolicy: json["picking_policy"],
        autoValidateTerminalPayment: json["auto_validate_terminal_payment"],
        trustedConfigIds: json["trusted_config_ids"] == null
            ? []
            : List<dynamic>.from(json["trusted_config_ids"]!.map((x) => x)),
        displayName: json["display_name"],
        createUid: json["create_uid"] == null
            ? []
            : List<dynamic>.from(json["create_uid"]!.map((x) => x)),
        createDate: json["create_date"],
        writeUid: json["write_uid"] == null
            ? []
            : List<dynamic>.from(json["write_uid"]!.map((x) => x)),
        writeDate: json["write_date"],
        adyenAskCustomerForTip: json["adyen_ask_customer_for_tip"],
        ifaceDiscount: json["iface_discount"],
        discountPc: json["discount_pc"],
        discountProductId: json["discount_product_id"],
        epsonPrinterIp: json["epson_printer_ip"],
        basicEmployeeIds: json["basic_employee_ids"] == null
            ? []
            : List<dynamic>.from(json["basic_employee_ids"]!.map((x) => x)),
        advancedEmployeeIds: json["advanced_employee_ids"] == null
            ? []
            : List<dynamic>.from(json["advanced_employee_ids"]!.map((x) => x)),
        giftCardSettings: json["gift_card_settings"],
        ifaceSplitbill: json["iface_splitbill"],
        ifacePrintbill: json["iface_printbill"],
        ifaceOrderlineNotes: json["iface_orderline_notes"],
        floorIds: json["floor_ids"] == null
            ? []
            : List<dynamic>.from(json["floor_ids"]!.map((x) => x)),
        setTipAfterPayment: json["set_tip_after_payment"],
        modulePosRestaurantAppointment:
            json["module_pos_restaurant_appointment"],
        crmTeamId: json["crm_team_id"],
        downPaymentProductId: json["down_payment_product_id"] == null
            ? []
            : List<dynamic>.from(
                json["down_payment_product_id"]!.map((x) => x)),
        status: json["status"],
        selfOrderingUrl: json["self_ordering_url"],
        selfOrderingTakeaway: json["self_ordering_takeaway"],
        selfOrderingAlternativeFpId: json["self_ordering_alternative_fp_id"],
        selfOrderingMode: json["self_ordering_mode"],
        selfOrderingServiceMode: json["self_ordering_service_mode"],
        selfOrderingDefaultLanguageId:
            json["self_ordering_default_language_id"],
        selfOrderingAvailableLanguageIds:
            json["self_ordering_available_language_ids"] == null
                ? []
                : List<dynamic>.from(
                    json["self_ordering_available_language_ids"]!
                        .map((x) => x)),
        selfOrderingImageHomeIds: json["self_ordering_image_home_ids"] == null
            ? []
            : List<dynamic>.from(
                json["self_ordering_image_home_ids"]!.map((x) => x)),
        selfOrderingDefaultUserId: json["self_ordering_default_user_id"] == null
            ? []
            : List<dynamic>.from(
                json["self_ordering_default_user_id"]!.map((x) => x)),
        selfOrderingPayAfter: json["self_ordering_pay_after"],
        selfOrderingImageBrand: json["self_ordering_image_brand"],
        selfOrderingImageBrandName: json["self_ordering_image_brand_name"],
        accessToken: json["access_token"],
        selfOrderOnlinePaymentMethodId:
            json["self_order_online_payment_method_id"],
        useProxy: json["use_proxy"],
        hasCashMovePermission: json["has_cash_move_permission"],
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "name": name,
        "printer_ids": printerIds == null
            ? []
            : List<dynamic>.from(printerIds!.map((x) => x)),
        "is_order_printer": isOrderPrinter,
        "is_installed_account_accountant": isInstalledAccountAccountant,
        "picking_type_id": pickingTypeId == null
            ? []
            : List<dynamic>.from(pickingTypeId!.map((x) => x)),
        "journal_id": journalId == null
            ? []
            : List<dynamic>.from(journalId!.map((x) => x)),
        "invoice_journal_id": invoiceJournalId == null
            ? []
            : List<dynamic>.from(invoiceJournalId!.map((x) => x)),
        "currency_id": currencyId == null
            ? []
            : List<dynamic>.from(currencyId!.map((x) => x)),
        "iface_cashdrawer": ifaceCashdrawer,
        "iface_electronic_scale": ifaceElectronicScale,
        "iface_customer_facing_display": ifaceCustomerFacingDisplay,
        "iface_customer_facing_display_via_proxy":
            ifaceCustomerFacingDisplayViaProxy,
        "iface_customer_facing_display_local": ifaceCustomerFacingDisplayLocal,
        "iface_customer_facing_display_background_image_1920":
            ifaceCustomerFacingDisplayBackgroundImage1920,
        "iface_print_via_proxy": ifacePrintViaProxy,
        "iface_scan_via_proxy": ifaceScanViaProxy,
        "iface_big_scrollbars": ifaceBigScrollbars,
        "iface_print_auto": ifacePrintAuto,
        "iface_print_skip_screen": ifacePrintSkipScreen,
        "iface_tax_included": ifaceTaxIncluded,
        "iface_start_categ_id": ifaceStartCategId == null
            ? []
            : List<dynamic>.from(ifaceStartCategId!.map((x) => x)),
        "iface_available_categ_ids": ifaceAvailableCategIds == null
            ? []
            : List<dynamic>.from(ifaceAvailableCategIds!.map((x) => x)),
        "restrict_price_control": restrictPriceControl,
        "is_margins_costs_accessible_to_every_user":
            isMarginsCostsAccessibleToEveryUser,
        "cash_control": cashControl,
        "set_maximum_difference": setMaximumDifference,
        "receipt_header": receiptHeader,
        "receipt_footer": receiptFooter,
        "proxy_ip": proxyIp,
        "active": active,
        "uuid": uuid,
        "sequence_id": sequenceId == null
            ? []
            : List<dynamic>.from(sequenceId!.map((x) => x)),
        "sequence_line_id": sequenceLineId == null
            ? []
            : List<dynamic>.from(sequenceLineId!.map((x) => x)),
        "session_ids": sessionIds == null
            ? []
            : List<dynamic>.from(sessionIds!.map((x) => x)),
        "current_session_id": currentSessionId == null
            ? []
            : List<dynamic>.from(currentSessionId!.map((x) => x)),
        "current_session_state": currentSessionState,
        "number_of_rescue_session": numberOfRescueSession,
        "last_session_closing_cash": lastSessionClosingCash,
        "last_session_closing_date":
            "${lastSessionClosingDate!.year.toString().padLeft(4, '0')}-${lastSessionClosingDate!.month.toString().padLeft(2, '0')}-${lastSessionClosingDate!.day.toString().padLeft(2, '0')}",
        "pos_session_username": posSessionUsername,
        "pos_session_state": posSessionState,
        "pos_session_duration": posSessionDuration,
        "pricelist_id": pricelistId,
        "available_pricelist_ids": availablePricelistIds == null
            ? []
            : List<dynamic>.from(availablePricelistIds!.map((x) => x)),
        "company_id": companyId == null
            ? []
            : List<dynamic>.from(companyId!.map((x) => x)),
        "group_pos_manager_id": groupPosManagerId == null
            ? []
            : List<dynamic>.from(groupPosManagerId!.map((x) => x)),
        "group_pos_user_id": groupPosUserId == null
            ? []
            : List<dynamic>.from(groupPosUserId!.map((x) => x)),
        "iface_tipproduct": ifaceTipproduct,
        "tip_product_id": tipProductId,
        "fiscal_position_ids": fiscalPositionIds == null
            ? []
            : List<dynamic>.from(fiscalPositionIds!.map((x) => x)),
        "default_fiscal_position_id": defaultFiscalPositionId,
        "default_bill_ids": defaultBillIds == null
            ? []
            : List<dynamic>.from(defaultBillIds!.map((x) => x)),
        "use_pricelist": usePricelist,
        "tax_regime_selection": taxRegimeSelection,
        "start_category": startCategory,
        "limit_categories": limitCategories,
        "module_pos_restaurant": modulePosRestaurant,
        "module_pos_discount": modulePosDiscount,
        "module_pos_mercury": modulePosMercury,
        "is_posbox": isPosbox,
        "is_header_or_footer": isHeaderOrFooter,
        "module_pos_hr": modulePosHr,
        "amount_authorized_diff": amountAuthorizedDiff,
        "payment_method_ids": paymentMethodIds == null
            ? []
            : List<dynamic>.from(paymentMethodIds!.map((x) => x)),
        "company_has_template": companyHasTemplate,
        "current_user_id": currentUserId == null
            ? []
            : List<dynamic>.from(currentUserId!.map((x) => x)),
        "other_devices": otherDevices,
        "rounding_method": roundingMethod,
        "cash_rounding": cashRounding,
        "only_round_cash_method": onlyRoundCashMethod,
        "has_active_session": hasActiveSession,
        "manual_discount": manualDiscount,
        "ship_later": shipLater,
        "warehouse_id": warehouseId == null
            ? []
            : List<dynamic>.from(warehouseId!.map((x) => x)),
        "route_id": routeId,
        "picking_policy": pickingPolicy,
        "auto_validate_terminal_payment": autoValidateTerminalPayment,
        "trusted_config_ids": trustedConfigIds == null
            ? []
            : List<dynamic>.from(trustedConfigIds!.map((x) => x)),
        "display_name": displayName,
        "create_uid": createUid == null
            ? []
            : List<dynamic>.from(createUid!.map((x) => x)),
        "create_date": createDate,
        "write_uid":
            writeUid == null ? [] : List<dynamic>.from(writeUid!.map((x) => x)),
        "write_date": writeDate,
        "adyen_ask_customer_for_tip": adyenAskCustomerForTip,
        "iface_discount": ifaceDiscount,
        "discount_pc": discountPc,
        "discount_product_id": discountProductId,
        "epson_printer_ip": epsonPrinterIp,
        "basic_employee_ids": basicEmployeeIds == null
            ? []
            : List<dynamic>.from(basicEmployeeIds!.map((x) => x)),
        "advanced_employee_ids": advancedEmployeeIds == null
            ? []
            : List<dynamic>.from(advancedEmployeeIds!.map((x) => x)),
        "gift_card_settings": giftCardSettings,
        "iface_splitbill": ifaceSplitbill,
        "iface_printbill": ifacePrintbill,
        "iface_orderline_notes": ifaceOrderlineNotes,
        "floor_ids":
            floorIds == null ? [] : List<dynamic>.from(floorIds!.map((x) => x)),
        "set_tip_after_payment": setTipAfterPayment,
        "module_pos_restaurant_appointment": modulePosRestaurantAppointment,
        "crm_team_id": crmTeamId,
        "down_payment_product_id": downPaymentProductId == null
            ? []
            : List<dynamic>.from(downPaymentProductId!.map((x) => x)),
        "status": status,
        "self_ordering_url": selfOrderingUrl,
        "self_ordering_takeaway": selfOrderingTakeaway,
        "self_ordering_alternative_fp_id": selfOrderingAlternativeFpId,
        "self_ordering_mode": selfOrderingMode,
        "self_ordering_service_mode": selfOrderingServiceMode,
        "self_ordering_default_language_id": selfOrderingDefaultLanguageId,
        "self_ordering_available_language_ids":
            selfOrderingAvailableLanguageIds == null
                ? []
                : List<dynamic>.from(
                    selfOrderingAvailableLanguageIds!.map((x) => x)),
        "self_ordering_image_home_ids": selfOrderingImageHomeIds == null
            ? []
            : List<dynamic>.from(selfOrderingImageHomeIds!.map((x) => x)),
        "self_ordering_default_user_id": selfOrderingDefaultUserId == null
            ? []
            : List<dynamic>.from(selfOrderingDefaultUserId!.map((x) => x)),
        "self_ordering_pay_after": selfOrderingPayAfter,
        "self_ordering_image_brand": selfOrderingImageBrand,
        "self_ordering_image_brand_name": selfOrderingImageBrandName,
        "access_token": accessToken,
        "self_order_online_payment_method_id": selfOrderOnlinePaymentMethodId,
        "use_proxy": useProxy,
        "has_cash_move_permission": hasCashMovePermission,
      };
}

class PosPaymentMethod {
  final int? id;
  final String? name;
  final bool? isCashCount;
  final bool? usePaymentTerminal;
  final bool? splitTransactions;
  final String? type;
  final bool? image;
  final int? sequence;
  final bool? adyenTerminalIdentifier;
  final bool? posMercuryConfigId;
  final bool? isOnlinePayment;
  final bool? stripeSerialNumber;
  final bool? vivaWalletTerminalId;
  final bool? adyenMerchantAccount;

  PosPaymentMethod({
    this.id,
    this.name,
    this.isCashCount,
    this.usePaymentTerminal,
    this.splitTransactions,
    this.type,
    this.image,
    this.sequence,
    this.adyenTerminalIdentifier,
    this.posMercuryConfigId,
    this.isOnlinePayment,
    this.stripeSerialNumber,
    this.vivaWalletTerminalId,
    this.adyenMerchantAccount,
  });

  factory PosPaymentMethod.fromJson(String str) =>
      PosPaymentMethod.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory PosPaymentMethod.fromMap(Map<String, dynamic> json) =>
      PosPaymentMethod(
        id: json["id"],
        name: json["name"],
        isCashCount: json["is_cash_count"],
        usePaymentTerminal: json["use_payment_terminal"],
        splitTransactions: json["split_transactions"],
        type: json["type"],
        image: json["image"],
        sequence: json["sequence"],
        adyenTerminalIdentifier: json["adyen_terminal_identifier"],
        posMercuryConfigId: json["pos_mercury_config_id"],
        isOnlinePayment: json["is_online_payment"],
        stripeSerialNumber: json["stripe_serial_number"],
        vivaWalletTerminalId: json["viva_wallet_terminal_id"],
        adyenMerchantAccount: json["adyen_merchant_account"],
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "name": name,
        "is_cash_count": isCashCount,
        "use_payment_terminal": usePaymentTerminal,
        "split_transactions": splitTransactions,
        "type": type,
        "image": image,
        "sequence": sequence,
        "adyen_terminal_identifier": adyenTerminalIdentifier,
        "pos_mercury_config_id": posMercuryConfigId,
        "is_online_payment": isOnlinePayment,
        "stripe_serial_number": stripeSerialNumber,
        "viva_wallet_terminal_id": vivaWalletTerminalId,
        "adyen_merchant_account": adyenMerchantAccount,
      };
}

class PosSession {
  final int? id;
  final String? name;
  final List<dynamic>? userId;
  final List<dynamic>? configId;
  final String? startAt;
  final String? stopAt;
  final int? sequenceNumber;
  final List<int>? paymentMethodIds;
  final String? state;
  final bool? updateStockAtClosing;
  final double? cashRegisterBalanceStart;
  final String? accessToken;

  PosSession({
    this.id,
    this.name,
    this.userId,
    this.configId,
    this.startAt,
    this.stopAt,
    this.sequenceNumber,
    this.paymentMethodIds,
    this.state,
    this.updateStockAtClosing,
    this.cashRegisterBalanceStart,
    this.accessToken,
  });

  factory PosSession.fromJson(String str) =>
      PosSession.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory PosSession.fromMap(Map<String, dynamic> json) => PosSession(
        id: json["id"],
        name: json["name"],
        userId: json["user_id"] == null
            ? []
            : List<dynamic>.from(json["user_id"]!.map((x) => x)),
        configId: json["config_id"] == null
            ? []
            : List<dynamic>.from(json["config_id"]!.map((x) => x)),
        startAt: json["start_at"],
        stopAt: json["stop_at"],
        sequenceNumber: json["sequence_number"],
        paymentMethodIds: json["payment_method_ids"] == null
            ? []
            : List<int>.from(json["payment_method_ids"]!.map((x) => x)),
        state: json["state"],
        updateStockAtClosing: json["update_stock_at_closing"],
        cashRegisterBalanceStart: json["cash_register_balance_start"],
        accessToken: json["access_token"],
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "name": name,
        "user_id":
            userId == null ? [] : List<dynamic>.from(userId!.map((x) => x)),
        "config_id":
            configId == null ? [] : List<dynamic>.from(configId!.map((x) => x)),
        "start_at": startAt,
        "stop_at": stopAt,
        "sequence_number": sequenceNumber,
        "payment_method_ids": paymentMethodIds == null
            ? []
            : List<dynamic>.from(paymentMethodIds!.map((x) => x)),
        "state": state,
        "update_stock_at_closing": updateStockAtClosing,
        "cash_register_balance_start": cashRegisterBalanceStart,
        "access_token": accessToken,
      };
}
