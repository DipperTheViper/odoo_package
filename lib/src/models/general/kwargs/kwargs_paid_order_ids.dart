import '../../../../odoo_package.dart';

class KwargsPaidOrderIds extends Kwargs {
  final int? limit;
  final List<List<dynamic>>? domain;
  final int? confingId;
  final int? offset;

  const KwargsPaidOrderIds({
    super.context,
    this.limit = 80,
    this.domain = const [
      ["partner_id.complete_name", "ilike", "%Colleen Diaz%"]
    ],
    this.offset = 0,
    this.confingId = 1,
  });

  factory KwargsPaidOrderIds.fromJson(Map<String, dynamic> json) =>
      KwargsPaidOrderIds(
        context: Context.fromJson(json["context"]),
        limit: json["limit"],
        confingId: json["confing_id"],
        offset: json["offset"],
        domain: json["domain"] == null
            ? []
            : List<List<dynamic>>.from(json["domain"]!
            .map((x) => List<dynamic>.from(x.map((x) => x)))),
      );

  @override
  Map<String, dynamic> toJson() {
    Map<String, dynamic> result = {
      "context": context,
      "limit": limit,
      "domain": domain,
      "offset": offset,
      "confing_id": confingId,
    };
    return result;
  }
}