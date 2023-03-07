import 'dart:io';

import 'package:json_parser/create_dart_class.dart';
import 'package:json_parser/read_json_file.dart';

void main() async {
  print('enter json file path:');
  final input = stdin.readLineSync();
  final res = await readJsonFile(input!);
  createFileRecursively('translate_constants', res);
}
