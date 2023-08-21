import 'package:billmanager/shared/models/item.dart';
import 'package:billmanager/shared/models/person.dart';
import 'package:hive/hive.dart';

part 'hangout.g.dart';

@HiveType(typeId: 3)
class Hangout {
  @HiveField(0)
  String name;
  @HiveField(1)
  final List<Person> persons = [];
  @HiveField(2)
  final List<Item> items = [];
  @HiveField(3)
  String imgPath = "";
  @HiveField(4)
  DateTime date = DateTime.now();

  Hangout(this.name) {
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

  String getHangoutKey() {
    //Calculate the hash of the hangout based on name and date
    return name + date.millisecond.toString();
  }
}
