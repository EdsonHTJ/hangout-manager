import 'dart:ffi';
import 'package:hive/hive.dart';

part 'person.g.dart';

@HiveType(typeId: 1)
class Person {
  @HiveField(0)
  final int id;
  @HiveField(1)
  final String name;
  @HiveField(2)
  final int credit;
  @HiveField(3)
  final int payed;
  @HiveField(4)
  final int shouldPay;
  @HiveField(5)
  final String imgPath;

  Person(
      {required this.id,
      required this.name,
      required this.imgPath,
      required this.credit,
      required this.payed,
      required this.shouldPay});
}
