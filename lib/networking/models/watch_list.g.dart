// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'watch_list.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class WatchListAdapter extends TypeAdapter<WatchList> {
  @override
  final int typeId = 0;

  @override
  WatchList read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return WatchList(
      id: fields[0] as int,
      title: fields[1] as String,
      year: fields[2] as String,
      poster: fields[3] as String,
    );
  }

  @override
  void write(BinaryWriter writer, WatchList obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.title)
      ..writeByte(2)
      ..write(obj.year)
      ..writeByte(3)
      ..write(obj.poster);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is WatchListAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
