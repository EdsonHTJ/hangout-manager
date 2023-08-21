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
  var h = Hangout("teste");
  h.insertPerson(
      Person(id: 0, name: "Aderas", imgPath: "", payed: 200, shouldPay: 300));

  h.insertPerson(
      Person(id: 1, name: "Edson", imgPath: "", payed: 200, shouldPay: 300));

  var h2 = Hangout("teste2");
  h2.insertPerson(
      Person(id: 0, name: "Aderas", imgPath: "", payed: 200, shouldPay: 300));
  var h3 = Hangout("teste3");

  h.insertItem(Item(name: "Churras", payer: 1));
  h2.date = DateTime.now().subtract(const Duration(days: 1));
  h3.date = DateTime.now().subtract(const Duration(days: 2));
  DataBase.insertHangout(h);
  DataBase.insertHangout(h2);
  DataBase.insertHangout(h3);
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
