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
      fields[0] as int,
      fields[1] as String,
    )
      ..imgPath = fields[4] as String
      ..date = fields[5] as DateTime?;
  }

  @override
  void write(BinaryWriter writer, Hangout obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.persons)
      ..writeByte(3)
      ..write(obj.items)
      ..writeByte(4)
      ..write(obj.imgPath)
      ..writeByte(5)
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
