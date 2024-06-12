// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'treasure_hunt_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TreasureHuntState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() searching,
    required TResult Function() noTreasuresFound,
    required TResult Function(Treasure treasure, bool isCollectingTreasure)
        treasureFound,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? searching,
    TResult? Function()? noTreasuresFound,
    TResult? Function(Treasure treasure, bool isCollectingTreasure)?
        treasureFound,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? searching,
    TResult Function()? noTreasuresFound,
    TResult Function(Treasure treasure, bool isCollectingTreasure)?
        treasureFound,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Searching value) searching,
    required TResult Function(NoTreasuresFound value) noTreasuresFound,
    required TResult Function(TreasureFound value) treasureFound,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Searching value)? searching,
    TResult? Function(NoTreasuresFound value)? noTreasuresFound,
    TResult? Function(TreasureFound value)? treasureFound,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Searching value)? searching,
    TResult Function(NoTreasuresFound value)? noTreasuresFound,
    TResult Function(TreasureFound value)? treasureFound,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TreasureHuntStateCopyWith<$Res> {
  factory $TreasureHuntStateCopyWith(
          TreasureHuntState value, $Res Function(TreasureHuntState) then) =
      _$TreasureHuntStateCopyWithImpl<$Res, TreasureHuntState>;
}

/// @nodoc
class _$TreasureHuntStateCopyWithImpl<$Res, $Val extends TreasureHuntState>
    implements $TreasureHuntStateCopyWith<$Res> {
  _$TreasureHuntStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$TreasureHuntStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'TreasureHuntState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() searching,
    required TResult Function() noTreasuresFound,
    required TResult Function(Treasure treasure, bool isCollectingTreasure)
        treasureFound,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? searching,
    TResult? Function()? noTreasuresFound,
    TResult? Function(Treasure treasure, bool isCollectingTreasure)?
        treasureFound,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? searching,
    TResult Function()? noTreasuresFound,
    TResult Function(Treasure treasure, bool isCollectingTreasure)?
        treasureFound,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Searching value) searching,
    required TResult Function(NoTreasuresFound value) noTreasuresFound,
    required TResult Function(TreasureFound value) treasureFound,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Searching value)? searching,
    TResult? Function(NoTreasuresFound value)? noTreasuresFound,
    TResult? Function(TreasureFound value)? treasureFound,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Searching value)? searching,
    TResult Function(NoTreasuresFound value)? noTreasuresFound,
    TResult Function(TreasureFound value)? treasureFound,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements TreasureHuntState {
  const factory Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$SearchingImplCopyWith<$Res> {
  factory _$$SearchingImplCopyWith(
          _$SearchingImpl value, $Res Function(_$SearchingImpl) then) =
      __$$SearchingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SearchingImplCopyWithImpl<$Res>
    extends _$TreasureHuntStateCopyWithImpl<$Res, _$SearchingImpl>
    implements _$$SearchingImplCopyWith<$Res> {
  __$$SearchingImplCopyWithImpl(
      _$SearchingImpl _value, $Res Function(_$SearchingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SearchingImpl implements Searching {
  const _$SearchingImpl();

  @override
  String toString() {
    return 'TreasureHuntState.searching()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SearchingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() searching,
    required TResult Function() noTreasuresFound,
    required TResult Function(Treasure treasure, bool isCollectingTreasure)
        treasureFound,
  }) {
    return searching();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? searching,
    TResult? Function()? noTreasuresFound,
    TResult? Function(Treasure treasure, bool isCollectingTreasure)?
        treasureFound,
  }) {
    return searching?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? searching,
    TResult Function()? noTreasuresFound,
    TResult Function(Treasure treasure, bool isCollectingTreasure)?
        treasureFound,
    required TResult orElse(),
  }) {
    if (searching != null) {
      return searching();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Searching value) searching,
    required TResult Function(NoTreasuresFound value) noTreasuresFound,
    required TResult Function(TreasureFound value) treasureFound,
  }) {
    return searching(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Searching value)? searching,
    TResult? Function(NoTreasuresFound value)? noTreasuresFound,
    TResult? Function(TreasureFound value)? treasureFound,
  }) {
    return searching?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Searching value)? searching,
    TResult Function(NoTreasuresFound value)? noTreasuresFound,
    TResult Function(TreasureFound value)? treasureFound,
    required TResult orElse(),
  }) {
    if (searching != null) {
      return searching(this);
    }
    return orElse();
  }
}

abstract class Searching implements TreasureHuntState {
  const factory Searching() = _$SearchingImpl;
}

/// @nodoc
abstract class _$$NoTreasuresFoundImplCopyWith<$Res> {
  factory _$$NoTreasuresFoundImplCopyWith(_$NoTreasuresFoundImpl value,
          $Res Function(_$NoTreasuresFoundImpl) then) =
      __$$NoTreasuresFoundImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NoTreasuresFoundImplCopyWithImpl<$Res>
    extends _$TreasureHuntStateCopyWithImpl<$Res, _$NoTreasuresFoundImpl>
    implements _$$NoTreasuresFoundImplCopyWith<$Res> {
  __$$NoTreasuresFoundImplCopyWithImpl(_$NoTreasuresFoundImpl _value,
      $Res Function(_$NoTreasuresFoundImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NoTreasuresFoundImpl implements NoTreasuresFound {
  const _$NoTreasuresFoundImpl();

  @override
  String toString() {
    return 'TreasureHuntState.noTreasuresFound()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NoTreasuresFoundImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() searching,
    required TResult Function() noTreasuresFound,
    required TResult Function(Treasure treasure, bool isCollectingTreasure)
        treasureFound,
  }) {
    return noTreasuresFound();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? searching,
    TResult? Function()? noTreasuresFound,
    TResult? Function(Treasure treasure, bool isCollectingTreasure)?
        treasureFound,
  }) {
    return noTreasuresFound?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? searching,
    TResult Function()? noTreasuresFound,
    TResult Function(Treasure treasure, bool isCollectingTreasure)?
        treasureFound,
    required TResult orElse(),
  }) {
    if (noTreasuresFound != null) {
      return noTreasuresFound();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Searching value) searching,
    required TResult Function(NoTreasuresFound value) noTreasuresFound,
    required TResult Function(TreasureFound value) treasureFound,
  }) {
    return noTreasuresFound(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Searching value)? searching,
    TResult? Function(NoTreasuresFound value)? noTreasuresFound,
    TResult? Function(TreasureFound value)? treasureFound,
  }) {
    return noTreasuresFound?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Searching value)? searching,
    TResult Function(NoTreasuresFound value)? noTreasuresFound,
    TResult Function(TreasureFound value)? treasureFound,
    required TResult orElse(),
  }) {
    if (noTreasuresFound != null) {
      return noTreasuresFound(this);
    }
    return orElse();
  }
}

abstract class NoTreasuresFound implements TreasureHuntState {
  const factory NoTreasuresFound() = _$NoTreasuresFoundImpl;
}

/// @nodoc
abstract class _$$TreasureFoundImplCopyWith<$Res> {
  factory _$$TreasureFoundImplCopyWith(
          _$TreasureFoundImpl value, $Res Function(_$TreasureFoundImpl) then) =
      __$$TreasureFoundImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Treasure treasure, bool isCollectingTreasure});

  $TreasureCopyWith<$Res> get treasure;
}

/// @nodoc
class __$$TreasureFoundImplCopyWithImpl<$Res>
    extends _$TreasureHuntStateCopyWithImpl<$Res, _$TreasureFoundImpl>
    implements _$$TreasureFoundImplCopyWith<$Res> {
  __$$TreasureFoundImplCopyWithImpl(
      _$TreasureFoundImpl _value, $Res Function(_$TreasureFoundImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? treasure = null,
    Object? isCollectingTreasure = null,
  }) {
    return _then(_$TreasureFoundImpl(
      treasure: null == treasure
          ? _value.treasure
          : treasure // ignore: cast_nullable_to_non_nullable
              as Treasure,
      isCollectingTreasure: null == isCollectingTreasure
          ? _value.isCollectingTreasure
          : isCollectingTreasure // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $TreasureCopyWith<$Res> get treasure {
    return $TreasureCopyWith<$Res>(_value.treasure, (value) {
      return _then(_value.copyWith(treasure: value));
    });
  }
}

/// @nodoc

class _$TreasureFoundImpl implements TreasureFound {
  const _$TreasureFoundImpl(
      {required this.treasure, this.isCollectingTreasure = false});

  @override
  final Treasure treasure;
  @override
  @JsonKey()
  final bool isCollectingTreasure;

  @override
  String toString() {
    return 'TreasureHuntState.treasureFound(treasure: $treasure, isCollectingTreasure: $isCollectingTreasure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TreasureFoundImpl &&
            (identical(other.treasure, treasure) ||
                other.treasure == treasure) &&
            (identical(other.isCollectingTreasure, isCollectingTreasure) ||
                other.isCollectingTreasure == isCollectingTreasure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, treasure, isCollectingTreasure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TreasureFoundImplCopyWith<_$TreasureFoundImpl> get copyWith =>
      __$$TreasureFoundImplCopyWithImpl<_$TreasureFoundImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() searching,
    required TResult Function() noTreasuresFound,
    required TResult Function(Treasure treasure, bool isCollectingTreasure)
        treasureFound,
  }) {
    return treasureFound(treasure, isCollectingTreasure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? searching,
    TResult? Function()? noTreasuresFound,
    TResult? Function(Treasure treasure, bool isCollectingTreasure)?
        treasureFound,
  }) {
    return treasureFound?.call(treasure, isCollectingTreasure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? searching,
    TResult Function()? noTreasuresFound,
    TResult Function(Treasure treasure, bool isCollectingTreasure)?
        treasureFound,
    required TResult orElse(),
  }) {
    if (treasureFound != null) {
      return treasureFound(treasure, isCollectingTreasure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Searching value) searching,
    required TResult Function(NoTreasuresFound value) noTreasuresFound,
    required TResult Function(TreasureFound value) treasureFound,
  }) {
    return treasureFound(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Searching value)? searching,
    TResult? Function(NoTreasuresFound value)? noTreasuresFound,
    TResult? Function(TreasureFound value)? treasureFound,
  }) {
    return treasureFound?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Searching value)? searching,
    TResult Function(NoTreasuresFound value)? noTreasuresFound,
    TResult Function(TreasureFound value)? treasureFound,
    required TResult orElse(),
  }) {
    if (treasureFound != null) {
      return treasureFound(this);
    }
    return orElse();
  }
}

abstract class TreasureFound implements TreasureHuntState {
  const factory TreasureFound(
      {required final Treasure treasure,
      final bool isCollectingTreasure}) = _$TreasureFoundImpl;

  Treasure get treasure;
  bool get isCollectingTreasure;
  @JsonKey(ignore: true)
  _$$TreasureFoundImplCopyWith<_$TreasureFoundImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
