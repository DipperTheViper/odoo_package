library odoo_package;

import 'dart:convert';
import 'package:logger/logger.dart';
import 'package:odoo_package/src/api_repository/api_repository.dart';
import 'package:odoo_package/src/models/attendance_user_data/attendance_user_data_request.dart';
import 'package:odoo_package/src/models/check_object_reference/check_object_reference_request.dart';
import 'package:odoo_package/src/models/close_session_from_ui/close_session_from_ui.dart';
import 'package:odoo_package/src/models/confirm_coupon_programs/confirm_coupon_programs_request.dart';
import 'package:odoo_package/src/models/create_costumer_from_ui/create_costumer_from_ui_request.dart';
import 'package:odoo_package/src/models/create_payment_from_ui/create_payment_from_ui_request.dart';
import 'package:odoo_package/src/models/get_pos_ui_product_pricelist_item_by_product/get_pos_ui_product_pricelist_item_by_product_request.dart';
import 'package:odoo_package/src/models/get_pos_ui_product_product_by_params/get_pos_ui_product_product_by_params_request.dart';
import 'package:odoo_package/src/models/get_product_info_pos/get_product_info_request.dart';
import 'package:odoo_package/src/models/load/load_request.dart';
import 'package:odoo_package/src/models/log_partner_message/log_partner_message_request.dart';
import 'package:odoo_package/src/models/post_closing_cash_details/post_closing_cash_details_request.dart';
import 'package:odoo_package/src/models/search/search_request.dart';
import 'package:odoo_package/src/models/search_read_costumer_request/search_read_costumer_request.dart';
import 'package:odoo_package/src/models/systray_get_activities/systray_get_activities_request.dart';
import 'package:odoo_package/src/models/try_cash_in_out/try_cash_in_out_request.dart';
import 'package:odoo_package/src/models/update_closing_control_state_session/update_closing_control_state_session_request.dart';
import 'package:odoo_package/src/models/use_coupon_code/use_coupon_code_request.dart';
import 'package:odoo_package/src/models/validate_coupon_programs/validate_coupon_programs_request.dart';
import 'package:odoo_rpc/odoo_rpc.dart';
import 'src/models/export.dart';
export 'src/models/export.dart';

/// methods are placed here to be called and return models
class OdooPackage {
  /// constructor generates the odoo client

  OdooPackage({
    required String url,
    required String dataBase,
    required String username,
    required String password,
  })  : _password = password,
        _username = username,
        _dataBase = dataBase,
        _url = url;

  final String _url;
  final String _dataBase;
  final String _username;
  final String _password;

  Future<void> init() async {
    client = OdooClient(_url);
    await _authentication();
  }

  /// odoo client
  late final OdooClient client;

  /// odoo session
  late final OdooSession session;

  /// session id
  late final int userId;

  /// Authentication
  Future<void> _authentication() async {
    try {
      session = await client.authenticate(
        _dataBase,
        _username,
        _password,
      );
      userId = session.userId;
    } catch (e) {
      rethrow;
    }
  }

  /// load pos data
  Future<Map<String, dynamic>> loadPosData({
    LoadPosDataRequestModel? loadPosDataRequestModel,
  }) async {
    try {
      final res = await client.callRPC(
        OdooApiRepository.loadPosData,
        'call',
        loadPosDataRequestModel ??
            LoadPosDataRequestModel(
              args: [
                [
                  userId,
                ],
              ],
              kwargs: Kwargs(
                context: Context(
                  allowedCompanyIds: [
                    session.companyId ?? 1,
                  ],
                  uid: userId,
                ),
              ),
            ),
      );
      return json.decode(res);
      // return LoadPosDataResponseModel.fromJson(
      //   res,
      // );
    } catch (e) {
      rethrow;
    }
  }

  /// set cash box pos
  Future<Map<String, dynamic>> setCashBoxPos({
    List<dynamic> args = const [],
  }) async {
    try {
      final res = await client.callRPC(
        OdooApiRepository.setCashboxPos,
        'call',
        SetCashboxPosRequestModel(
          args: [userId, ...args],
          kwargs: Kwargs(
            context: Context(
              allowedCompanyIds: [
                session.companyId ?? 1,
              ],
              uid: userId,
            ),
          ),
        ).toJson(),
      );
      return json.decode(res);
    } catch (e) {
      rethrow;
    }
  }

  //get product information
  Future<Map<String, dynamic>> getProductInfo({
    required GetProductInfoRequest getProductInfoRequest,
  }) async {
    try {
      final res = await client.callRPC(
        OdooApiRepository.getProductInfo,
        'call',
        getProductInfoRequest.toJson(),
      );
      return json.decode(res);
    } catch (e) {
      rethrow;
    }
  }

  Future<Map<String, dynamic>> searchReadCostumer(
      {required SearchReadCostumerRequest searchReadCostumer}) async {
    try {
      // final res = searchRead.toJson();
      // print(res);
      // return res;
      final res = await client.callRPC(OdooApiRepository.searchReadCostumer,
          'call', searchReadCostumer.toJson());
      return json.decode(res);
    } catch (e) {
      rethrow;
    }
  }

  Future<Map<String, dynamic>> checkObjectReference(
      {required CheckObjectReferenceRequest checkObjectReference}) async {
    try {
      final res = await client.callRPC(OdooApiRepository.checkObjectReference,
          'call', checkObjectReference.toJson());
      return json.decode(res);
    } catch (e) {
      rethrow;
    }
  }

  Future<Map<String, dynamic>> searchPaidOrderIds(
      {required SearchReadCostumerRequest searchReadCostumerRequest}) async {
    try {
      final res = await client.callRPC(OdooApiRepository.searchPaidOrderIds,
          'call', searchReadCostumerRequest.toJson());

      return json.decode(res);
    } catch (e) {
      rethrow;
    }
  }

  Future<Map<String, dynamic>> createCostumerFromUi(
      {required CreateCostumerFromUiRequest
          createCostumerFromUiRequest}) async {
    try {
      final res = await client.callRPC(OdooApiRepository.createCostumerFromUi,
          'call', createCostumerFromUiRequest.toJson());
      return json.decode(res);
    } catch (e) {
      rethrow;
    }
  }

  Future<Map<String, dynamic>> createPaymentFromUi(
      {required CreatePaymentFromUiRequest createPaymentFromUiRequest}) async {
    try {
      final res = await client.callRPC(OdooApiRepository.createPaymentFromUi,
          'call', createPaymentFromUiRequest.toJson());
      return json.decode(res);
    } catch (e) {
      rethrow;
    }
  }

  Future<Map<String, dynamic>> confirmCouponPrograms(
      {required ConfirmCouponProgramsRequest
          confirmCouponProgramsRequest}) async {
    try {
      final res = await client.callRPC(OdooApiRepository.confirmCouponPrograms,
          'call', confirmCouponProgramsRequest.toJson());
      return json.decode(res);
    } catch (e) {
      rethrow;
    }
  }

  Future<Map<String, dynamic>> validateCouponPrograms(
      {required ValidateCouponProgramsRequest
          validateCouponProgramsRequest}) async {
    try {
      final res = await client.callRPC(OdooApiRepository.validateCouponPrograms,
          'call', validateCouponProgramsRequest.toJson());
      return json.decode(res);
    } catch (e) {
      rethrow;
    }
  }

  Future<Map<String, dynamic>> useCouponCode(
      {required UseCouponCodeRequest useCouponCodeRequest}) async {
    try {
      final res = await client.callRPC(OdooApiRepository.useCouponCode, 'call', useCouponCodeRequest.toJson());
      return json.decode(res);
    } catch (e) {
      rethrow;
    }
  }

  Future<Map<String, dynamic>> tryCashInOut(
      {required TryCashInOutRequest tryCashInOutRequest}) async {
    try {
      final res = await client.callRPC(OdooApiRepository.tryCashInOut, 'call', tryCashInOutRequest.toJson());
      return json.decode(res);
    } catch (e) {
      rethrow;
    }
  }

  Future<Map<String,dynamic>> logPartnerMessageRequest({required LogPartnerMessageRequest logPartnerMessageRequest}) async {
    try{
      final res = await client.callRPC(OdooApiRepository.logPartnerMessage, 'call', logPartnerMessageRequest.toJson());
          return json.decode(res);
    }catch(e){
      rethrow;
    }
  }

  Future<Map<String,dynamic>> search({required SearchRequest searchRequest}) async {
    try{
      final res = await client.callRPC(OdooApiRepository.search, 'call', searchRequest.toJson());
      return json.decode(res);
    }catch(e){
      rethrow;
    }
  }

  Future<Map<String,dynamic>> getPosUiProductProductByParams({required GetPosUiProductProductByParamsRequest getPosUiProductProductByParams}) async {
    try{
      final res = await client.callRPC(OdooApiRepository.getPosUiProductProductByParams, 'call', getPosUiProductProductByParams.toJson());
      return json.decode(res);
    }catch(e){
      rethrow;
    }
  }


  Future<Map<String,dynamic>> getPosUiProductPriceListByProduct({required GetPosUiProductPricelistItemByProductRequest getPosUiProductPricelistItemByProduct}) async {
    try{
      final res = await client.callRPC(OdooApiRepository.getPosUiProductPriceListItemByProduct, 'call', getPosUiProductPricelistItemByProduct.toJson());
      return json.decode(res);
    }catch(e){
      rethrow;
    }
  }

  Future<Map<String,dynamic>> postClosingCashDetails({required PostClosingCashDetailsRequest postClosingCashDetailsRequest}) async {
    try{
      final res = await client.callRPC(OdooApiRepository.postClosingCashDetails, 'call', postClosingCashDetailsRequest.toJson());
      return json.decode(res);
    }catch(e){
      rethrow;
    }
  }

  Future<Map<String,dynamic>> attendanceUserData({required AttendanceUserDataRequest attendanceUserDataRequest}) async {
    try{
      final res = await client.callRPC(OdooApiRepository.attendanceUserData, 'call', attendanceUserDataRequest.toJson());
      return json.decode(res);
    }catch(e){
      rethrow;
    }
  }

  Future<Map<String,dynamic>> systrayGetActivities({required SystrayGetActivitiesRequest systrayGetActivitiesRequest}) async {
    try{
      final res = await client.callRPC(OdooApiRepository.systrayGetActivities, 'call', systrayGetActivitiesRequest.toJson());
      return json.decode(res);
    }catch(e){
      rethrow;
    }
  }

  Future<Map<String,dynamic>> load({required LoadRequest loadRequest}) async {
    try{
      final res = await client.callRPC(OdooApiRepository.load, 'call', loadRequest.toJson());
      return json.decode(res);
    }catch(e){
      rethrow;
    }
  }

  Future<Map<String,dynamic>> updateClosingControlStateSession({required UpdateClosingControlStateSessionRequest updateClosingControlStateSession}) async {
    try{
      final res = await client.callRPC(OdooApiRepository.updateClosingControlStateSession, 'call', updateClosingControlStateSession.toJson());
      return json.decode(res);
    }catch(e){
      rethrow;
    }
  }

  Future<Map<String,dynamic>> closeSessionFromUi({required CloseSessionFromUiRequest closeSessionFromUiRequest}) async {
    try{
      final res = await client.callRPC(OdooApiRepository.closeSessionFromUiRequest, 'call', closeSessionFromUiRequest.toJson());
      Logger().e("session.userId ${session.userId}/// session.partnerId${session.partnerId} ///session.userLogin${session.userLogin}");
      return json.decode(res);
    }catch(e){
      rethrow;
    }
  }
}
