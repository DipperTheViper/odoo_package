import '../../../../odoo_package.dart';

class KwargsSearchReadCostumer extends Kwargs {
  final int? limit;
  final List<List<dynamic>>? domain;
  final List<String>? fields;

  const KwargsSearchReadCostumer({
    super.context,
    this.limit = 1,
    this.domain = const [
      ["partner_id", "=", 33],
      ["program_id", "=", 6]
    ],
    this.fields = const ["id", "points", "code", "partner_id", "program_id"],
  });

  factory KwargsSearchReadCostumer.fromJson(Map<String, dynamic> json) =>
      KwargsSearchReadCostumer(
        context: Context.fromJson(json["context"]),
        domain: json["domain"] == null
            ? []
            : List<List<dynamic>>.from(json["domain"]!
            .map((x) => List<dynamic>.from(x.map((x) => x)))),
        fields: json["fields"] == null
            ? []
            : List<String>.from(json["fields"]!.map((x) => x)),
      );

  Map<String, dynamic> toJson() {
    Map<String, dynamic> result = {
      "context": context,
      "limit": limit,
      "domain": domain,
      "fields": fields,
    };
    print(result);
    return result;
  }
}