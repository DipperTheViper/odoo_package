import 'dart:convert';

class LoadRequest {
  final int? actionId;
  final AdditionalContext? additionalContext;

  LoadRequest({
    this.actionId =957,
    this.additionalContext = const AdditionalContext(),
  });

  factory LoadRequest.fromRawJson(String str) => LoadRequest.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory LoadRequest.fromJson(Map<String, dynamic> json) => LoadRequest(
    actionId: json["action_id"],
    additionalContext: json["additional_context"] == null ? null : AdditionalContext.fromJson(json["additional_context"]),
  );

  Map<String, dynamic> toJson() => {
    "action_id": actionId,
    "additional_context": additionalContext?.toJson(),
  };
}

class AdditionalContext {
 const AdditionalContext();

  factory AdditionalContext.fromRawJson(String str) => AdditionalContext.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory AdditionalContext.fromJson(Map<String, dynamic> json) => AdditionalContext(
  );

  Map<String, dynamic> toJson() => {
  };
}
