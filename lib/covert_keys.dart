import 'package:change_case/change_case.dart';

String convertKey(Map<String, dynamic> json) {
  List<String> keys = [];

  json.forEach((key, value) {
    final keyToLowerCase = key.toLowerCase();
    keys.add(
        'static const String ${keyToLowerCase.toCamelCase()} = "${keyToLowerCase.toSnakeCase()}";\n');
  });

  final removeDuplicates = keys.toSet().toList();

  final removeBrackets =
      removeDuplicates.toString().replaceAll('[', '').replaceAll(']', '');
  final replaceComaWithSemicolon = removeBrackets.replaceAll(',', '');

  final String variables = replaceComaWithSemicolon;

  return variables;
}
