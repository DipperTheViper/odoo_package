abstract class OdooApiRepository {
  static const String loadPosData =
      "/web/dataset/call_kw/pos.session/load_pos_data";
  static const String setCashboxPos =
      "/web/dataset/call_kw/pos.session/set_cashbox_pos";
  static const String getProductInfo =
      "/web/dataset/call_kw/product.product/get_product_info_pos";
  static const String searchReadCostumer =
      "/web/dataset/call_kw/loyalty.card/search_read";
  static const String checkObjectReference =
      "/web/dataset/call_kw/ir.model.data/check_object_reference";
  static const String searchPaidOrderIds =
      "/web/dataset/call_kw/pos.order/search_paid_order_ids";
  static const String createCostumerFromUi =
      "/web/dataset/call_kw/res.partner/create_from_ui";
  static const String getPosUiResPartnerByParams =
      "/web/dataset/call_kw/pos.session/get_pos_ui_res_partner_by_params";
  static const String createPaymentFromUi =
      "/web/dataset/call_kw/pos.order/create_from_ui";
  static const String confirmCouponPrograms =
      "/web/dataset/call_kw/pos.order/confirm_coupon_programs";
  static const String validateCouponPrograms =
      "/web/dataset/call_kw/pos.order/validate_coupon_programs";
  static const String useCouponCode =
      "/web/dataset/call_kw/pos.order/search_paid_order_ids";
  static const String getClosingControlDataRequest =
      "/web/dataset/call_kw/pos.session/get_closing_control_data";
  static const String tryCashInOut =
      "/web/dataset/call_kw/pos.session/try_cash_in_out";

  static const String logPartnerMessage =
      "/web/dataset/call_kw/pos.session/log_partner_message";

  static const String getPosUiProductProductByParams =
      "/web/dataset/call_kw/pos.session/get_pos_ui_product_product_by_params";

  static const String search = "/web/dataset/call_kw/product.product/search";

  static const String getPosUiProductPriceListItemByProduct =
      "/web/dataset/call_kw/pos.session/get_pos_ui_product_pricelist_item_by_product";

  static const String postClosingCashDetails =
      "/web/dataset/call_kw/pos.session/post_closing_cash_details";
  static const String systrayGetActivities =
      "/web/dataset/call_kw/res.users/systray_get_activities";

  static const String attendanceUserData =
      "/hr_attendance/attendance_user_data";

  static const String load = "/web/action/load";
  static const String updateClosingControlStateSession =
      "/web/dataset/call_kw/pos.session/update_closing_control_state_session";
  static const String closeSessionFromUiRequest =
      "/web/dataset/call_kw/pos.session/close_session_from_ui";
}
