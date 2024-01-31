import 'dart:convert';

import 'package:odoo_package/odoo_package.dart';

import '../context.dart';

class Kwargs {
  final Context? context;

  const Kwargs({this.context = const Context()});

  factory Kwargs.fromJson(Map<String, dynamic> json) =>
      Kwargs(context: Context.fromJson(json["context"]));

  Map<String, dynamic> toJson() {
    Map<String, dynamic> result = {
      "context": context,
    };
    print(result);
    return result;
  }
}


