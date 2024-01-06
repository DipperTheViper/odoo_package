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

  /// call methods like this
  odooPackage.loadPosData().then(
    (value) {
      Logger().i(value["result"]["product.product"].first);
    },
  );
}
