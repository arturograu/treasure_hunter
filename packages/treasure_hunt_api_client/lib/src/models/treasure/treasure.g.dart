// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'treasure.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TreasureImpl _$$TreasureImplFromJson(Map<String, dynamic> json) =>
    _$TreasureImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
      imageUrl: json['imageUrl'] as String,
      latitude: (json['latitude'] as num).toDouble(),
      longitude: (json['longitude'] as num).toDouble(),
    );

Map<String, dynamic> _$$TreasureImplToJson(_$TreasureImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'imageUrl': instance.imageUrl,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
    };
