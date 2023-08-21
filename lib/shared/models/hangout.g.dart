// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hangout.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class HangoutAdapter extends TypeAdapter<Hangout> {
  @override
  final int typeId = 3;

  @override
  Hangout read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Hangout(
      fields[0] as String,
    )
      ..imgPath = fields[3] as String
      ..date = fields[4] as DateTime;
  }

  @override
  void write(BinaryWriter writer, Hangout obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.persons)
      ..writeByte(2)
      ..write(obj.items)
      ..writeByte(3)
      ..write(obj.imgPath)
      ..writeByte(4)
      ..write(obj.date);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HangoutAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
