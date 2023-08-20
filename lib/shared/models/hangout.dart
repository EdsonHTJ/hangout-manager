import 'package:billmanager/shared/models/item.dart';
import 'package:billmanager/shared/models/person.dart';
import 'package:hive/hive.dart';

part 'hangout.g.dart';

@HiveType(typeId: 3)
class Hangout {
  @HiveField(0)
  final int id;
  @HiveField(1)
  final String name;
  @HiveField(2)
  final List<Person> persons = [];
  @HiveField(3)
  final List<Item> items = [];

  Hangout(this.id,this.name);

  void insertPerson(Person p) {
    persons.add(p);
  }

  void insertItem(Item i) {
    items.add(i);
  }
}
