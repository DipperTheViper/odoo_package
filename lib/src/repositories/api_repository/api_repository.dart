abstract class OdooApiRepository {
  static const _preUrl = "/web/dataset/call_kw/";
  static String _createFromUi(String method) =>
      "${_preUrl}res.$method/create_from_ui";

  static const String loadPosData = "${_preUrl}pos.session/load_pos_data";
  static const String setCashboxPos = "${_preUrl}pos.session/set_cashbox_pos";
  static const String getProductInfo =
      "${_preUrl}product.product/get_product_info_pos";
  static const String searchReadCostumer = "${_preUrl}loyalty.card/search_read";
  static const String checkObjectReference =
      "${_preUrl}ir.model.data/check_object_reference";
  static const String searchPaidOrderIds =
      "${_preUrl}pos.order/search_paid_order_ids";
  static String createCostumerFromUi = _createFromUi("partner");
  static const String getPosUiResPartnerByParams =
      "${_preUrl}pos.session/get_pos_ui_res_partner_by_params";
  static String createPaymentFromUi = _createFromUi("order");
  static const String confirmCouponPrograms =
      "${_preUrl}pos.order/confirm_coupon_programs";
  static const String validateCouponPrograms =
      "${_preUrl}pos.order/validate_coupon_programs";
  static const String useCouponCode =
      "${_preUrl}pos.order/search_paid_order_ids";
  static const String getClosingControlDataRequest =
      "${_preUrl}pos.session/get_closing_control_data";
  static const String tryCashInOut = "${_preUrl}pos.session/try_cash_in_out";

  static const String logPartnerMessage =
      "${_preUrl}pos.session/log_partner_message";

  static const String getPosUiProductProductByParams =
      "${_preUrl}pos.session/get_pos_ui_product_product_by_params";

  static const String search = "${_preUrl}product.product/search";

  static const String getPosUiProductPriceListItemByProduct =
      "${_preUrl}pos.session/get_pos_ui_product_pricelist_item_by_product";

  static const String postClosingCashDetails =
      "${_preUrl}pos.session/post_closing_cash_details";
  static const String systrayGetActivities =
      "${_preUrl}res.users/systray_get_activities";

  static const String attendanceUserData =
      "/hr_attendance/attendance_user_data";

  static const String load = "/web/action/load";
  static const String updateClosingControlStateSession =
      "${_preUrl}pos.session/update_closing_control_state_session";
  static const String closeSessionFromUiRequest =
      "${_preUrl}pos.session/close_session_from_ui";
}
