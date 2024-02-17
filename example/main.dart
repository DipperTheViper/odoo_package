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
    // await odooPackage.loadPosData();
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
    ///
    // await odooPackage.checkObjectReference();
    /// TODO: error
    // await odooPackage.searchReadCostumer(
    //   searchReadCostumer: SearchReadCostumerRequest(),
    // );
    /// TODO: model problem (pass the small class and place into arg and fix to json function where when it is null , place false in it)
    // await odooPackage.createCostumerFromUi(
    //   createCostumerFromUiRequest: CreateCostumerFromUiRequest(
    //     args: [],
    //   ),
    // );
    /// TODO: model problem (pass the small class and place into arg and fix to json function where when it is null , place false in it)
    // await odooPackage.createPaymentFromUi(
    //   createPaymentFromUiRequest: CreatePaymentFromUiRequest(),
    // );
    /// TODO: error and model needs to be separated as well
    // await odooPackage.confirmCouponPrograms(
    //   confirmCouponProgramsRequest: ConfirmCouponProgramsRequest(),
    // );
    /// TODO: error and model needs to be separated as well
    // await odooPackage.validateCouponPrograms(
    //   validateCouponProgramsRequest: ValidateCouponProgramsRequest(),
    // );
    /// TODO: error and model needs to be separated as well
    // await odooPackage.useCouponCode(
    //   useCouponCodeRequest: const UseCouponCodeRequest(),
    // );
    /// TODO: model needs to be separated + error on taking cashier id (it is constant now set on 2)
    // await odooPackage.tryCashInOut(
    //   tryCashInOutRequest: TryCashInOutRequest(),
    // );
    ///

  } catch (e) {
    Logger().e(e);
  }
}
