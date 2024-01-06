import 'context.dart';

class Kwargs {
  final Context context;

  const Kwargs({
    this.context = const Context(),
  });

  factory Kwargs.fromJson(Map<String, dynamic> json) => Kwargs(
        context: Context.fromJson(json["context"]),
      );

  Map<String, dynamic> toJson() => {
        "context": context.toJson(),
      };
}
