import 'package:odoo_package/odoo_package.dart';
import 'package:logger/logger.dart';

Future<void> main() async {
  /// make odoo package
  OdooPackage odooPackage = OdooPackage(
    url: "https://56016058-17-0-all.runbot201.odoo.com/",
    dataBase: "56016058-17-0-all",
    username: "admin",
    password: "admin",
  );

  await odooPackage.init();

  /// call load pos data methods like this
  // await odooPackage.loadPosData().then(
  //   (value) {
  //     /// prints firs item in products
  //     Logger().i(value["result"]["product.product"].first);
  //   },
  // );

  await odooPackage.setCashBoxPos(
    args: [
      25.0,
      "1 x 10\n3 x 5"
    ],
  ).then(
    (value) {
      /// prints result
      Logger().i(value);
    },
  );
}
