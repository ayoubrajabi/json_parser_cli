import 'dart:io';

import 'covert_keys.dart';

void createFileRecursively(String filename, Map<String, dynamic> json) {
  final filePath = 'lib/constants/$filename.dart';
  File(filePath).create(recursive: true).then((value) async {
    var myFile = File(filePath);
    var sink = myFile.openWrite();
    sink.write('''
class TranslateConstants {
  ${convertKey(json)}
}
''');
    await sink.flush();
    await sink.close();
  });
}
