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
  var h = Hangout("teste");
  h.insertPerson(Person(
      id: 0,
      name: "Aderas",
      imgPath: "",
      credit: 100,
      payed: 200,
      shouldPay: 300));

  h.insertPerson(Person(
      id: 1,
      name: "Edson",
      imgPath: "",
      credit: 100,
      payed: 200,
      shouldPay: 300));

  h.insertItem(Item(name: "Churras", payerId: 0, consumerId: 1));

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
