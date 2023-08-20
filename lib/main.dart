import 'package:billmanager/shared/db/hive.dart';
import 'package:billmanager/shared/models/hangout.dart';
import 'package:billmanager/shared/models/item.dart';
import 'package:billmanager/shared/models/person.dart';
import 'package:billmanager/shared/routes/routes.dart';
import 'package:billmanager/shared/theme/theme.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  testDb();
  runApp(const MyApp());
}

void testDb() async {
  await DataBase.init();
  await DataBase.cleanAll();
  var h = Hangout(0,"teste");
  h.insertPerson(Person(
      id: 0,
      name: "Aderas",
      imgPath: "",
      payed: 200,
      shouldPay: 300));

  h.insertPerson(Person(
      id: 1,
      name: "Edson",
      imgPath: "",
      payed: 200,
      shouldPay: 300));

  h.insertItem(Item(name: "Churras", payer: 1));

  DataBase.insertHangout(h);
  var hang = await DataBase.readRangouts();
  print(hang);
  print(hang[0].items[0].name);
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: appTheme,
      routes: appRoutes,
      initialRoute: "/login",
    );
  }
}
