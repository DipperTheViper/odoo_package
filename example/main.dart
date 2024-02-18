import 'package:odoo_package/odoo_package.dart';
import 'package:logger/logger.dart';
import 'package:odoo_package/src/models/create_costumer_from_ui/costumer_creation_fields.dart';

Future<void> main() async {
  /// make odoo package
  OdooPackage odooPackage = OdooPackage(
    url: "https://paliz.narvanventures.com/",
  );

  await odooPackage.init();
  await odooPackage.authentication(
    dataBase: "sample1",
    username: "mahdikafashkohan@gmail.com",
    password: "#Dip7878",
  );

  /// call load pos data methods like this
  try {
    await odooPackage.loadPosData().then(
      (value) {
        Logger().i(value["result"]["pos.session"]["id"]);
        Logger().i(value["result"]["pos.config"]["current_session_id"]);
        if (value["result"]["pos.session"]["id"] != null) {
          odooPackage.setPosSession(
            value["result"]["pos.session"]["id"],
          );
        }
      },
    );

    /// Okay
    // await odooPackage.setCashBoxPos(
    //   args: [0, ""],
    // );
    /// Okay
    // await odooPackage.getProductInfo(
    //   getProductInfoRequest: GetProductInfoRequest(
    //     args: [[31], 295, 1, 11],
    //   ),
    // );
    /// TODO: error
    // await odooPackage.searchReadCostumer(
    //   searchReadCostumer: SearchReadCostumerRequest(),
    // );
    /// okay
    // await odooPackage.checkObjectReference();
    /// TODO: error
    // await odooPackage.searchReadCostumer(
    //   searchReadCostumer: SearchReadCostumerRequest(),
    // );
    /// TODO: model problem (pass the small class and place into arg and fix to json function where when it is null , place false in it) + error (loyalty)
    // await odooPackage.createCostumerFromUi(
    //   createCostumerFromUiRequest: CreateCostumerFromUiRequest(
    //     args: [],
    //   ),
    // );
    /// TODO: model problem (pass the small class and place into arg and fix to json function where when it is null , place false in it) + error (loyalty)
    // await odooPackage.createPaymentFromUi(
    //   createPaymentFromUiRequest: CreatePaymentFromUiRequest(),
    // );
    /// TODO: model needs to be separated as well + error
    // await odooPackage.confirmCouponPrograms(
    //   confirmCouponProgramsRequest: ConfirmCouponProgramsRequest(),
    // );
    /// TODO: model needs to be separated as well + error
    // await odooPackage.validateCouponPrograms(
    //   validateCouponProgramsRequest: ValidateCouponProgramsRequest(),
    // );
    /// TODO: model needs to be separated as well + error
    // await odooPackage.useCouponCode(
    //   useCouponCodeRequest: const UseCouponCodeRequest(),
    // );
    /// TODO: error
    await odooPackage.tryCashInOut(
      args: [
        "in",
        1000, //amount
        "cash in reason test", //note
        const CashArgClass(
          //amount
          formattedAmount: "\$ 1000",
          translatedType: "in", //type
        ).toJson(),
      ],
    );

    /// TODO: model needs to be separated + error
    // await odooPackage.logPartnerMessageRequest(
    //   logPartnerMessageRequest: LogPartnerMessageRequest(),
    // );
    /// okay
    // await odooPackage.search(
    //   keyword: "desk",
    // );

    /// TODO: model needs to be separated + error
    // await odooPackage.getPosUiProductProductByParams(
    //   getPosUiProductProductByParams: GetPosUiProductProductByParamsRequest(),
    // );
    /// TODO: model needs to be separated + error
    // await odooPackage.getPosUiProductPriceListByProduct(
    //   getPosUiProductPricelistItemByProduct: GetPosUiProductPricelistItemByProductRequest(),
    // );
    /// TODO: model needs to be separated + error
    // await odooPackage.postClosingCashDetails(
    //   postClosingCashDetailsRequest: PostClosingCashDetailsRequest(),
    // );
    /// TODO: model needs to be separated + error
    // await odooPackage.attendanceUserData(
    //   attendanceUserDataRequest: AttendanceUserDataRequest(),
    // );
    /// okay
    // await odooPackage.systrayGetActivities();
    /// okay
    // await odooPackage.load();

    /// TODO: model needs to be separated + error
    // await odooPackage.updateClosingControlStateSession(
    //   updateClosingControlStateSession:
    //       UpdateClosingControlStateSessionRequest(),
    // );
    /// TODO: model needs to be separated + error
    // await odooPackage.closeSessionFromUi(
    //   closeSessionFromUiRequest: CloseSessionFromUiRequest(),
    // );
  } catch (e) {
    rethrow;
  }
}
