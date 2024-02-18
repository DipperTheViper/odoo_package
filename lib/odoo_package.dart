library odoo_package;

import 'dart:convert';
import 'package:logger/logger.dart';
import 'package:odoo_package/src/odoo_client/odoo_rpc.dart';
import 'package:odoo_package/src/repositories/api_repository/api_repository.dart';
import 'src/models/export.dart';
export 'src/models/export.dart';

/// methods are placed here to be called and return models
class OdooPackage {
  /// constructor generates the odoo client

  OdooPackage({
    required String url,
  }) : _url = url;

  final String _url;

  Future<void> init() async {
    client = OdooClient(_url);
  }

  /// odoo client
  late final OdooClient client;

  /// odoo session
  late final OdooSession session;

  /// session id
  late final int userId;
  late final int _posSessionId;

  void setPosSession(int id) {
    _posSessionId = id;
  }

  /// Authentication
  Future<void> authentication({
    required String username,
    required String password,
    required String dataBase,
  }) async {
    try {
      session = await client.authenticate(
        db: dataBase,
        login: username,
        password: password,
      );
      userId = session.userId;

      /// Logger
      Logger().i(session);
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
                    session.companyId ?? 9,
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
                session.companyId ?? 9,
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

  ///get product information
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

  /// TODO: fix document
  /// loyalty card????
  Future<Map<String, dynamic>> searchReadCostumer({
    required SearchReadCostumerRequest searchReadCostumer,
  }) async {
    try {
      // final res = searchRead.toJson();
      // print(res);
      // return res;
      final res = await client.callRPC(
        OdooApiRepository.searchReadCostumer,
        'call',
        searchReadCostumer.toJson(),
      );
      return json.decode(res);
    } catch (e) {
      rethrow;
    }
  }

  /// TODO: fix document
  /// idk what it does
  Future<Map<String, dynamic>> checkObjectReference({
    CheckObjectReferenceRequest? checkObjectReference,
  }) async {
    try {
      final res = await client.callRPC(
        OdooApiRepository.checkObjectReference,
        'call',
        (checkObjectReference ?? CheckObjectReferenceRequest()).toJson(),
      );
      return json.decode(res);
    } catch (e) {
      rethrow;
    }
  }

  /// search for paid recipient
  Future<Map<String, dynamic>> searchPaidOrderIds({
    required SearchReadCostumerRequest searchReadCostumerRequest,
  }) async {
    try {
      final res = await client.callRPC(OdooApiRepository.searchPaidOrderIds,
          'call', searchReadCostumerRequest.toJson());

      return json.decode(res);
    } catch (e) {
      rethrow;
    }
  }

  /// update or create customer
  Future<Map<String, dynamic>> createCostumerFromUi({
    required CreateCostumerFromUiRequest createCostumerFromUiRequest,
  }) async {
    try {
      final res = await client.callRPC(
        OdooApiRepository.createCostumerFromUi,
        'call',
        createCostumerFromUiRequest.toJson(),
      );
      return json.decode(res);
    } catch (e) {
      rethrow;
    }
  }

  /// payment button! gets payment information
  Future<Map<String, dynamic>> createPaymentFromUi({
    required CreatePaymentFromUiRequest createPaymentFromUiRequest,
  }) async {
    try {
      final res = await client.callRPC(
        OdooApiRepository.createPaymentFromUi,
        'call',
        createPaymentFromUiRequest.toJson(),
      );
      return json.decode(res);
    } catch (e) {
      rethrow;
    }
  }

  /// sends coupon id for checking if its valid or not (is called from main page)
  Future<Map<String, dynamic>> confirmCouponPrograms({
    required ConfirmCouponProgramsRequest confirmCouponProgramsRequest,
  }) async {
    try {
      final res = await client.callRPC(OdooApiRepository.confirmCouponPrograms,
          'call', confirmCouponProgramsRequest.toJson());
      return json.decode(res);
    } catch (e) {
      rethrow;
    }
  }

  /// like above
  Future<Map<String, dynamic>> validateCouponPrograms({
    required ValidateCouponProgramsRequest validateCouponProgramsRequest,
  }) async {
    try {
      final res = await client.callRPC(OdooApiRepository.validateCouponPrograms,
          'call', validateCouponProgramsRequest.toJson());
      return json.decode(res);
    } catch (e) {
      rethrow;
    }
  }

  /// like above
  Future<Map<String, dynamic>> useCouponCode({
    required UseCouponCodeRequest useCouponCodeRequest,
  }) async {
    try {
      final res = await client.callRPC(
        OdooApiRepository.useCouponCode,
        'call',
        useCouponCodeRequest.toJson(),
      );
      return json.decode(res);
    } catch (e) {
      rethrow;
    }
  }

  /// for cashing in or out from burger menu
  Future<Map<String, dynamic>> tryCashInOut({
    List<dynamic> args = const [],
  }) async {
    try {
      /// first change the model
      /// then add user id inside arg
      /// [userId ... [arg (collected from constructor)]]
      final res = await client.callRPC(
        OdooApiRepository.tryCashInOut,
        'call',
        TryCashInOutRequest(
          args: [
            [_posSessionId],
            /// TODO works with 17 but not user id!
            ...args
          ],
        ).toJson(),
      );
      return json.decode(res);
    } catch (e) {
      rethrow;
    }
  }

  /// cash in or out (note)
  Future<Map<String, dynamic>> logPartnerMessageRequest({
    required LogPartnerMessageRequest logPartnerMessageRequest,
  }) async {
    try {
      final res = await client.callRPC(
        OdooApiRepository.logPartnerMessage,
        'call',
        logPartnerMessageRequest.toJson(),
      );
      return json.decode(res);
    } catch (e) {
      rethrow;
    }
  }

  /// search more button in products
  Future<Map<String, dynamic>> search({
    required String keyword,
  }) async {
    try {
      SearchRequest searchRequest = SearchRequest(
        args: [
          [
            "&",
            ["available_in_pos", "=", true],
            "|",
            "|",
            ["name", "ilike", keyword],
            ["default_code", "ilike", keyword],
            ["barcode", "ilike", keyword],
          ],
        ],
      );

      final res = await client.callRPC(
        OdooApiRepository.search,
        'call',
        searchRequest.toJson(),
      );
      return json.decode(res);
    } catch (e) {
      rethrow;
    }
  }

  /// search more button in customers
  Future<Map<String, dynamic>> getPosUiProductProductByParams({
    required GetPosUiProductProductByParamsRequest
        getPosUiProductProductByParams,
  }) async {
    try {
      final res = await client.callRPC(
        OdooApiRepository.getPosUiProductProductByParams,
        'call',
        getPosUiProductProductByParams.toJson(),
      );
      return json.decode(res);
    } catch (e) {
      rethrow;
    }
  }

  /// search more button in product
  Future<Map<String, dynamic>> getPosUiProductPriceListByProduct({
    required GetPosUiProductPricelistItemByProductRequest
        getPosUiProductPricelistItemByProduct,
  }) async {
    try {
      final res = await client.callRPC(
        OdooApiRepository.getPosUiProductPriceListItemByProduct,
        'call',
        getPosUiProductPricelistItemByProduct.toJson(),
      );
      return json.decode(res);
    } catch (e) {
      rethrow;
    }
  }

  /// while closing session enter cash
  Future<Map<String, dynamic>> postClosingCashDetails({
    required PostClosingCashDetailsRequest postClosingCashDetailsRequest,
  }) async {
    try {
      final res = await client.callRPC(
        OdooApiRepository.postClosingCashDetails,
        'call',
        postClosingCashDetailsRequest.toJson(),
      );
      return json.decode(res);
    } catch (e) {
      rethrow;
    }
  }

  /// TODO: fix document
  /// idk!!!@!@#!!$
  Future<Map<String, dynamic>> attendanceUserData({
    required AttendanceUserDataRequest attendanceUserDataRequest,
  }) async {
    try {
      final res = await client.callRPC(
        OdooApiRepository.attendanceUserData,
        'call',
        attendanceUserDataRequest.toJson(),
      );
      return json.decode(res);
    } catch (e) {
      rethrow;
    }
  }

  /// while closing session is called
  /// has response like
  /// {"jsonrpc": "2.0", "id": "4d5f728d331e12a90a1c8060ad159fe5a7cbc0f8", "result": []}
  ///
  /// idk!!!@!@#!!$
  Future<Map<String, dynamic>> systrayGetActivities({
    SystrayGetActivitiesRequest systrayGetActivitiesRequest =
        const SystrayGetActivitiesRequest(),
  }) async {
    try {
      final res = await client.callRPC(
        OdooApiRepository.systrayGetActivities,
        'call',
        systrayGetActivitiesRequest.toJson(),
      );
      return json.decode(res);
    } catch (e) {
      rethrow;
    }
  }

  /// while closing session is called
  /// has response like
  /// {"jsonrpc": "2.0", "id": "803fc81637d4585da5835e0778a31ca6041ee62b", "result": false}
  ///
  /// idk !@!@!$$
  Future<Map<String, dynamic>> load({
    LoadRequest loadRequest = const LoadRequest(),
  }) async {
    try {
      final res = await client.callRPC(
        OdooApiRepository.load,
        'call',
        loadRequest.toJson(),
      );
      return json.decode(res);
    } catch (e) {
      rethrow;
    }
  }

  /// while closing session is called
  /// has response like
  /// ????
  ///
  /// idd=k !@!@!$$
  Future<Map<String, dynamic>> updateClosingControlStateSession({
    required UpdateClosingControlStateSessionRequest
        updateClosingControlStateSession,
  }) async {
    try {
      final res = await client.callRPC(
        OdooApiRepository.updateClosingControlStateSession,
        'call',
        updateClosingControlStateSession.toJson(),
      );
      return json.decode(res);
    } catch (e) {
      rethrow;
    }
  }

  /// while closing session is called
  /// has response like
  /// ????
  ///
  /// idd=k !@!@!$$
  Future<Map<String, dynamic>> closeSessionFromUi(
      {required CloseSessionFromUiRequest closeSessionFromUiRequest}) async {
    try {
      final res = await client.callRPC(
        OdooApiRepository.closeSessionFromUiRequest,
        'call',
        closeSessionFromUiRequest.toJson(),
      );
      return json.decode(res);
    } catch (e) {
      rethrow;
    }
  }
}
