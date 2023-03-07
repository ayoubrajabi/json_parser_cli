import 'package:change_case/change_case.dart';

String convertKey(Map<String, dynamic> json) {
  List<String> keys = [];

  json.forEach((key, value) {
    keys.add(
        'static const String ${key.toCamelCase()} = "${key.toSnakeCase()}";');
  });

  final removeBrackets =
      keys.toString().replaceAll('[', '').replaceAll(']', '');
  final replaceComaWithSemicolon = removeBrackets.replaceAll(',', '');

  final String variables = replaceComaWithSemicolon;

  return variables;
}
