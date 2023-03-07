import 'dart:io';

import 'package:json_parser/create_dart_class.dart';
import 'package:json_parser/read_json_file.dart';

void main() async {
  print('Enter json file path:');
  final jsonPath = stdin.readLineSync();
  final res = await readJsonFile(jsonPath!);
  print('Enter dart file name:');
  final dartFileName = stdin.readLineSync();
  print('Enter class name:');
  final className = stdin.readLineSync();
  createFileRecursively(dartFileName!, className!, res);
}
