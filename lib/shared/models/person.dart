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
  final int payed;
  @HiveField(3)
  final int shouldPay;
  @HiveField(4)
  final String imgPath;

  Person(
      {required this.id,
      required this.name,
      required this.imgPath,
      required this.payed,
      required this.shouldPay});
}
