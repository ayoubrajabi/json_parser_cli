String convertKey(Map<String, dynamic> json) {
  List<String> keys = [];

  json.forEach((key, value) {
    keys.add(
        'static const String ${key[0].toLowerCase()}${key.toString().replaceAll('_', '').substring(1)} = "$key"');
  });

  return '${keys.toString().replaceAll('[', '').replaceAll(']', '').replaceAll(',', ';')};';
}
