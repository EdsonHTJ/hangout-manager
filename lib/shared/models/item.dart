import 'dart:ffi';
import 'package:hive/hive.dart';

@HiveType(typeId: 2)
class Item {
  @HiveField(0)
  final String name;
  @HiveField(1)
  final Uint64 payerId;
  @HiveField(2)
  final Uint64 consumerId;

  Item({required this.name, required this.payerId, required this.consumerId});
}
