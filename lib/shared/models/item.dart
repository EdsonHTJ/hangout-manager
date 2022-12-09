import 'dart:ffi';
import 'package:hive/hive.dart';

part 'item.g.dart';

@HiveType(typeId: 2)
class Item {
  @HiveField(0)
  final String name;
  @HiveField(1)
  final int payerId;
  @HiveField(2)
  final int consumerId;

  Item({required this.name, required this.payerId, required this.consumerId});
}
