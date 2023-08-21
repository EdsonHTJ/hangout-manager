import 'package:billmanager/shared/models/item.dart';
import 'package:billmanager/shared/models/person.dart';
import 'package:hive/hive.dart';

part 'hangout.g.dart';

@HiveType(typeId: 3)
class Hangout {
  @HiveField(0)
  final int id;
  @HiveField(1)
  String name;
  @HiveField(2)
  final List<Person> persons = [];
  @HiveField(3)
  final List<Item> items = [];
  @HiveField(4)
  String imgPath = "";
  @HiveField(5)
  DateTime? date;

  Hangout(this.id, this.name) {
    date = DateTime.now();
  }

  void insertPerson(Person p) {
    persons.add(p);
  }

  void removePerson(Person p) {
    persons.remove(p);
  }

  void removeItem(Item i) {
    items.remove(i);
  }

  void insertItem(Item i) {
    items.add(i);
  }
}
