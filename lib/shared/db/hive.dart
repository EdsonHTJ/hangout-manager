import 'dart:io';

import 'package:hive/hive.dart';

class DataBase {
  static init() {
    var path = Directory.current.path;
    Hive.init(path);
  }
}
