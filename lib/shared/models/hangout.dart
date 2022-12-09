import 'package:billmanager/shared/models/item.dart';
import 'package:billmanager/shared/models/person.dart';
import 'package:hive/hive.dart';

@HiveType(typeId: 3)
class Hangout {
  @HiveField(0)
  final String name;
  @HiveField(1)
  final List<Person> persons = [];
  @HiveField(2)
  final List<Item> items = [];

  Hangout(this.name);

  void insertPerson(Person p) {
    persons.add(p);
  }

  void insertItem(Item i) {
    items.add(i);
  }
}
