import 'dart:io';

import 'package:billmanager/shared/models/hangout.dart';
import 'package:billmanager/shared/models/item.dart';
import 'package:billmanager/shared/models/person.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hive/hive.dart';

const _hangoutBox = "hangouts";

class DataBase {
  static init() async {
    await Hive.initFlutter();
    Hive.registerAdapter<Hangout>(HangoutAdapter());
    Hive.registerAdapter<Person>(PersonAdapter());
    Hive.registerAdapter<Item>(ItemAdapter());
  }

  static insertHangout(Hangout h) async {
    var hs = await Hive.openBox<Hangout>(_hangoutBox);
    await hs.put(h.name, h);
    await hs.close();
  }

  static Future<List<Hangout>> readRangouts() async {
    var hBox = await Hive.openBox<Hangout>(_hangoutBox);
    var dList = hBox.values;
    await hBox.close();

    List<Hangout> hList = [];
    for (var element in dList) {
      hList.add(element);
    }

    return hList;
  }

  static deleteHangout(String name) async {
    var hBox = await Hive.openBox<Hangout>(_hangoutBox);
    await hBox.delete(name);
    await hBox.close();
  }

  static cleanAll() async {
    await Hive.deleteBoxFromDisk(_hangoutBox);
    var hBox = await Hive.openBox(_hangoutBox);
    await hBox.clear();
    await hBox.close();
  }
}
