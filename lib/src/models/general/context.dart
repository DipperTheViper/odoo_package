class Context {
  final String lang;
  final String tz;
  final int uid;
  final List<int> allowedCompanyIds;

  const Context({
    this.lang = "en_US",
    this.tz = "Europe/Brussels",
    this.uid = 2,
    this.allowedCompanyIds = const [
      1,
    ],
  });

  factory Context.fromJson(Map<String, dynamic> json) => Context(
        lang: json["lang"],
        tz: json["tz"],
        uid: json["uid"],
        allowedCompanyIds:
            List<int>.from(json["allowed_company_ids"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "lang": lang,
        "tz": tz,
        "uid": uid,
        "allowed_company_ids":
            List<dynamic>.from(allowedCompanyIds.map((x) => x)),
      };
}
