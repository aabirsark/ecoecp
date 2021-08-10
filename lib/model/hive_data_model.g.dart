// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hive_data_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class EcoEcpDataAdapter extends TypeAdapter<EcoEcpData> {
  @override
  final int typeId = 0;

  @override
  EcoEcpData read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return EcoEcpData()
      ..price = fields[0] as int?
      ..isExp = fields[1] as bool
      ..dateTime = fields[2] as DateTime;
  }

  @override
  void write(BinaryWriter writer, EcoEcpData obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.price)
      ..writeByte(1)
      ..write(obj.isExp)
      ..writeByte(2)
      ..write(obj.dateTime);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is EcoEcpDataAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
