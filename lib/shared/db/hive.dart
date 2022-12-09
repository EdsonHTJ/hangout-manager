import 'dart:io';

import 'package:billmanager/shared/models/hangout.dart';
import 'package:billmanager/shared/models/item.dart';
import 'package:billmanager/shared/models/person.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hive/hive.dart';

class DataBase {
  static init() async {
    await Hive.initFlutter();
    Hive.registerAdapter<Hangout>(HangoutAdapter());
    Hive.registerAdapter<Person>(PersonAdapter());
    Hive.registerAdapter<Item>(ItemAdapter());
  }

  static insertHangout(Hangout h) async {
    var hs = await Hive.openBox<Hangout>("Hangouts");
    hs.put(h.name, h);
  }

  static Future<List<Hangout>> readRangouts() async {
    var hBox = await Hive.openBox<Hangout>("Hangouts");
    var dList = hBox.values;
    hBox.close();

    List<Hangout> hList = [];
    for (var element in dList) {
      hList.add(element);
    }

    return hList;
  }
}
