library odoo_package;

import 'dart:convert';

import 'package:odoo_package/src/api_repository/api_repository.dart';
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
  Future<dynamic> loadPosData({
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
}
