// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'treasure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Treasure _$TreasureFromJson(Map<String, dynamic> json) {
  return _Treasure.fromJson(json);
}

/// @nodoc
mixin _$Treasure {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;
  double get latitude => throw _privateConstructorUsedError;
  double get longitude => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TreasureCopyWith<Treasure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TreasureCopyWith<$Res> {
  factory $TreasureCopyWith(Treasure value, $Res Function(Treasure) then) =
      _$TreasureCopyWithImpl<$Res, Treasure>;
  @useResult
  $Res call(
      {String id,
      String name,
      String description,
      String imageUrl,
      double latitude,
      double longitude});
}

/// @nodoc
class _$TreasureCopyWithImpl<$Res, $Val extends Treasure>
    implements $TreasureCopyWith<$Res> {
  _$TreasureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? imageUrl = null,
    Object? latitude = null,
    Object? longitude = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TreasureImplCopyWith<$Res>
    implements $TreasureCopyWith<$Res> {
  factory _$$TreasureImplCopyWith(
          _$TreasureImpl value, $Res Function(_$TreasureImpl) then) =
      __$$TreasureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String description,
      String imageUrl,
      double latitude,
      double longitude});
}

/// @nodoc
class __$$TreasureImplCopyWithImpl<$Res>
    extends _$TreasureCopyWithImpl<$Res, _$TreasureImpl>
    implements _$$TreasureImplCopyWith<$Res> {
  __$$TreasureImplCopyWithImpl(
      _$TreasureImpl _value, $Res Function(_$TreasureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? imageUrl = null,
    Object? latitude = null,
    Object? longitude = null,
  }) {
    return _then(_$TreasureImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TreasureImpl implements _Treasure {
  const _$TreasureImpl(
      {required this.id,
      required this.name,
      required this.description,
      required this.imageUrl,
      required this.latitude,
      required this.longitude});

  factory _$TreasureImpl.fromJson(Map<String, dynamic> json) =>
      _$$TreasureImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String description;
  @override
  final String imageUrl;
  @override
  final double latitude;
  @override
  final double longitude;

  @override
  String toString() {
    return 'Treasure(id: $id, name: $name, description: $description, imageUrl: $imageUrl, latitude: $latitude, longitude: $longitude)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TreasureImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, description, imageUrl, latitude, longitude);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TreasureImplCopyWith<_$TreasureImpl> get copyWith =>
      __$$TreasureImplCopyWithImpl<_$TreasureImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TreasureImplToJson(
      this,
    );
  }
}

abstract class _Treasure implements Treasure {
  const factory _Treasure(
      {required final String id,
      required final String name,
      required final String description,
      required final String imageUrl,
      required final double latitude,
      required final double longitude}) = _$TreasureImpl;

  factory _Treasure.fromJson(Map<String, dynamic> json) =
      _$TreasureImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get description;
  @override
  String get imageUrl;
  @override
  double get latitude;
  @override
  double get longitude;
  @override
  @JsonKey(ignore: true)
  _$$TreasureImplCopyWith<_$TreasureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
