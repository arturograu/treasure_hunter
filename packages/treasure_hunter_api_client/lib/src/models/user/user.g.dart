// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserImpl _$$UserImplFromJson(Map<String, dynamic> json) => _$UserImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      email: json['email'] as String,
      favouriteTreasures: (json['favouriteTreasures'] as List<dynamic>?)
              ?.map((e) => Treasure.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <Treasure>[],
    );

Map<String, dynamic> _$$UserImplToJson(_$UserImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'favouriteTreasures': instance.favouriteTreasures,
    };
