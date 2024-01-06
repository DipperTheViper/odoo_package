import 'dart:convert';

class Version {
  final String? serverVersion;
  final List<dynamic>? serverVersionInfo;
  final String? serverSerie;
  final int? protocolVersion;

  Version({
    this.serverVersion,
    this.serverVersionInfo,
    this.serverSerie,
    this.protocolVersion,
  });

  factory Version.fromJson(String str) => Version.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Version.fromMap(Map<String, dynamic> json) => Version(
        serverVersion: json["server_version"],
        serverVersionInfo: json["server_version_info"] == null
            ? []
            : List<dynamic>.from(json["server_version_info"]!.map((x) => x)),
        serverSerie: json["server_serie"],
        protocolVersion: json["protocol_version"],
      );

  Map<String, dynamic> toMap() => {
        "server_version": serverVersion,
        "server_version_info": serverVersionInfo == null
            ? []
            : List<dynamic>.from(serverVersionInfo!.map((x) => x)),
        "server_serie": serverSerie,
        "protocol_version": protocolVersion,
      };
}
