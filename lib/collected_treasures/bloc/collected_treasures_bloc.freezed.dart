// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'collected_treasures_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CollectedTreasuresEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String id) treasureFavouriteStatusChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String id)? treasureFavouriteStatusChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String id)? treasureFavouriteStatusChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(TreasureFavouriteStatusChanged value)
        treasureFavouriteStatusChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
    TResult? Function(TreasureFavouriteStatusChanged value)?
        treasureFavouriteStatusChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(TreasureFavouriteStatusChanged value)?
        treasureFavouriteStatusChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CollectedTreasuresEventCopyWith<$Res> {
  factory $CollectedTreasuresEventCopyWith(CollectedTreasuresEvent value,
          $Res Function(CollectedTreasuresEvent) then) =
      _$CollectedTreasuresEventCopyWithImpl<$Res, CollectedTreasuresEvent>;
}

/// @nodoc
class _$CollectedTreasuresEventCopyWithImpl<$Res,
        $Val extends CollectedTreasuresEvent>
    implements $CollectedTreasuresEventCopyWith<$Res> {
  _$CollectedTreasuresEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$CollectedTreasuresEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StartedImpl implements Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'CollectedTreasuresEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String id) treasureFavouriteStatusChanged,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String id)? treasureFavouriteStatusChanged,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String id)? treasureFavouriteStatusChanged,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(TreasureFavouriteStatusChanged value)
        treasureFavouriteStatusChanged,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
    TResult? Function(TreasureFavouriteStatusChanged value)?
        treasureFavouriteStatusChanged,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(TreasureFavouriteStatusChanged value)?
        treasureFavouriteStatusChanged,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class Started implements CollectedTreasuresEvent {
  const factory Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$TreasureFavouriteStatusChangedImplCopyWith<$Res> {
  factory _$$TreasureFavouriteStatusChangedImplCopyWith(
          _$TreasureFavouriteStatusChangedImpl value,
          $Res Function(_$TreasureFavouriteStatusChangedImpl) then) =
      __$$TreasureFavouriteStatusChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$TreasureFavouriteStatusChangedImplCopyWithImpl<$Res>
    extends _$CollectedTreasuresEventCopyWithImpl<$Res,
        _$TreasureFavouriteStatusChangedImpl>
    implements _$$TreasureFavouriteStatusChangedImplCopyWith<$Res> {
  __$$TreasureFavouriteStatusChangedImplCopyWithImpl(
      _$TreasureFavouriteStatusChangedImpl _value,
      $Res Function(_$TreasureFavouriteStatusChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$TreasureFavouriteStatusChangedImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$TreasureFavouriteStatusChangedImpl
    implements TreasureFavouriteStatusChanged {
  const _$TreasureFavouriteStatusChangedImpl({required this.id});

  @override
  final String id;

  @override
  String toString() {
    return 'CollectedTreasuresEvent.treasureFavouriteStatusChanged(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TreasureFavouriteStatusChangedImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TreasureFavouriteStatusChangedImplCopyWith<
          _$TreasureFavouriteStatusChangedImpl>
      get copyWith => __$$TreasureFavouriteStatusChangedImplCopyWithImpl<
          _$TreasureFavouriteStatusChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String id) treasureFavouriteStatusChanged,
  }) {
    return treasureFavouriteStatusChanged(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String id)? treasureFavouriteStatusChanged,
  }) {
    return treasureFavouriteStatusChanged?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String id)? treasureFavouriteStatusChanged,
    required TResult orElse(),
  }) {
    if (treasureFavouriteStatusChanged != null) {
      return treasureFavouriteStatusChanged(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(TreasureFavouriteStatusChanged value)
        treasureFavouriteStatusChanged,
  }) {
    return treasureFavouriteStatusChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
    TResult? Function(TreasureFavouriteStatusChanged value)?
        treasureFavouriteStatusChanged,
  }) {
    return treasureFavouriteStatusChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(TreasureFavouriteStatusChanged value)?
        treasureFavouriteStatusChanged,
    required TResult orElse(),
  }) {
    if (treasureFavouriteStatusChanged != null) {
      return treasureFavouriteStatusChanged(this);
    }
    return orElse();
  }
}

abstract class TreasureFavouriteStatusChanged
    implements CollectedTreasuresEvent {
  const factory TreasureFavouriteStatusChanged({required final String id}) =
      _$TreasureFavouriteStatusChangedImpl;

  String get id;
  @JsonKey(ignore: true)
  _$$TreasureFavouriteStatusChangedImplCopyWith<
          _$TreasureFavouriteStatusChangedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CollectedTreasuresState {
  List<String> get favouriteTreasures => throw _privateConstructorUsedError;
  List<Treasure> get allCollectedTreasures =>
      throw _privateConstructorUsedError;
  Set<String> get pendingFavouriteDeletions =>
      throw _privateConstructorUsedError;
  Set<String> get pendingFavouriteAdditions =>
      throw _privateConstructorUsedError;
  CollectedTreasuresStatus get status => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CollectedTreasuresStateCopyWith<CollectedTreasuresState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CollectedTreasuresStateCopyWith<$Res> {
  factory $CollectedTreasuresStateCopyWith(CollectedTreasuresState value,
          $Res Function(CollectedTreasuresState) then) =
      _$CollectedTreasuresStateCopyWithImpl<$Res, CollectedTreasuresState>;
  @useResult
  $Res call(
      {List<String> favouriteTreasures,
      List<Treasure> allCollectedTreasures,
      Set<String> pendingFavouriteDeletions,
      Set<String> pendingFavouriteAdditions,
      CollectedTreasuresStatus status});
}

/// @nodoc
class _$CollectedTreasuresStateCopyWithImpl<$Res,
        $Val extends CollectedTreasuresState>
    implements $CollectedTreasuresStateCopyWith<$Res> {
  _$CollectedTreasuresStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? favouriteTreasures = null,
    Object? allCollectedTreasures = null,
    Object? pendingFavouriteDeletions = null,
    Object? pendingFavouriteAdditions = null,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      favouriteTreasures: null == favouriteTreasures
          ? _value.favouriteTreasures
          : favouriteTreasures // ignore: cast_nullable_to_non_nullable
              as List<String>,
      allCollectedTreasures: null == allCollectedTreasures
          ? _value.allCollectedTreasures
          : allCollectedTreasures // ignore: cast_nullable_to_non_nullable
              as List<Treasure>,
      pendingFavouriteDeletions: null == pendingFavouriteDeletions
          ? _value.pendingFavouriteDeletions
          : pendingFavouriteDeletions // ignore: cast_nullable_to_non_nullable
              as Set<String>,
      pendingFavouriteAdditions: null == pendingFavouriteAdditions
          ? _value.pendingFavouriteAdditions
          : pendingFavouriteAdditions // ignore: cast_nullable_to_non_nullable
              as Set<String>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CollectedTreasuresStatus,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CollectedTreasuresStateImplCopyWith<$Res>
    implements $CollectedTreasuresStateCopyWith<$Res> {
  factory _$$CollectedTreasuresStateImplCopyWith(
          _$CollectedTreasuresStateImpl value,
          $Res Function(_$CollectedTreasuresStateImpl) then) =
      __$$CollectedTreasuresStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<String> favouriteTreasures,
      List<Treasure> allCollectedTreasures,
      Set<String> pendingFavouriteDeletions,
      Set<String> pendingFavouriteAdditions,
      CollectedTreasuresStatus status});
}

/// @nodoc
class __$$CollectedTreasuresStateImplCopyWithImpl<$Res>
    extends _$CollectedTreasuresStateCopyWithImpl<$Res,
        _$CollectedTreasuresStateImpl>
    implements _$$CollectedTreasuresStateImplCopyWith<$Res> {
  __$$CollectedTreasuresStateImplCopyWithImpl(
      _$CollectedTreasuresStateImpl _value,
      $Res Function(_$CollectedTreasuresStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? favouriteTreasures = null,
    Object? allCollectedTreasures = null,
    Object? pendingFavouriteDeletions = null,
    Object? pendingFavouriteAdditions = null,
    Object? status = null,
  }) {
    return _then(_$CollectedTreasuresStateImpl(
      favouriteTreasures: null == favouriteTreasures
          ? _value._favouriteTreasures
          : favouriteTreasures // ignore: cast_nullable_to_non_nullable
              as List<String>,
      allCollectedTreasures: null == allCollectedTreasures
          ? _value._allCollectedTreasures
          : allCollectedTreasures // ignore: cast_nullable_to_non_nullable
              as List<Treasure>,
      pendingFavouriteDeletions: null == pendingFavouriteDeletions
          ? _value._pendingFavouriteDeletions
          : pendingFavouriteDeletions // ignore: cast_nullable_to_non_nullable
              as Set<String>,
      pendingFavouriteAdditions: null == pendingFavouriteAdditions
          ? _value._pendingFavouriteAdditions
          : pendingFavouriteAdditions // ignore: cast_nullable_to_non_nullable
              as Set<String>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CollectedTreasuresStatus,
    ));
  }
}

/// @nodoc

class _$CollectedTreasuresStateImpl implements _CollectedTreasuresState {
  const _$CollectedTreasuresStateImpl(
      {required final List<String> favouriteTreasures,
      final List<Treasure> allCollectedTreasures = const <Treasure>[],
      final Set<String> pendingFavouriteDeletions = const <String>{},
      final Set<String> pendingFavouriteAdditions = const <String>{},
      this.status = CollectedTreasuresStatus.initial})
      : _favouriteTreasures = favouriteTreasures,
        _allCollectedTreasures = allCollectedTreasures,
        _pendingFavouriteDeletions = pendingFavouriteDeletions,
        _pendingFavouriteAdditions = pendingFavouriteAdditions;

  final List<String> _favouriteTreasures;
  @override
  List<String> get favouriteTreasures {
    if (_favouriteTreasures is EqualUnmodifiableListView)
      return _favouriteTreasures;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_favouriteTreasures);
  }

  final List<Treasure> _allCollectedTreasures;
  @override
  @JsonKey()
  List<Treasure> get allCollectedTreasures {
    if (_allCollectedTreasures is EqualUnmodifiableListView)
      return _allCollectedTreasures;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_allCollectedTreasures);
  }

  final Set<String> _pendingFavouriteDeletions;
  @override
  @JsonKey()
  Set<String> get pendingFavouriteDeletions {
    if (_pendingFavouriteDeletions is EqualUnmodifiableSetView)
      return _pendingFavouriteDeletions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_pendingFavouriteDeletions);
  }

  final Set<String> _pendingFavouriteAdditions;
  @override
  @JsonKey()
  Set<String> get pendingFavouriteAdditions {
    if (_pendingFavouriteAdditions is EqualUnmodifiableSetView)
      return _pendingFavouriteAdditions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_pendingFavouriteAdditions);
  }

  @override
  @JsonKey()
  final CollectedTreasuresStatus status;

  @override
  String toString() {
    return 'CollectedTreasuresState(favouriteTreasures: $favouriteTreasures, allCollectedTreasures: $allCollectedTreasures, pendingFavouriteDeletions: $pendingFavouriteDeletions, pendingFavouriteAdditions: $pendingFavouriteAdditions, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CollectedTreasuresStateImpl &&
            const DeepCollectionEquality()
                .equals(other._favouriteTreasures, _favouriteTreasures) &&
            const DeepCollectionEquality()
                .equals(other._allCollectedTreasures, _allCollectedTreasures) &&
            const DeepCollectionEquality().equals(
                other._pendingFavouriteDeletions, _pendingFavouriteDeletions) &&
            const DeepCollectionEquality().equals(
                other._pendingFavouriteAdditions, _pendingFavouriteAdditions) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_favouriteTreasures),
      const DeepCollectionEquality().hash(_allCollectedTreasures),
      const DeepCollectionEquality().hash(_pendingFavouriteDeletions),
      const DeepCollectionEquality().hash(_pendingFavouriteAdditions),
      status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CollectedTreasuresStateImplCopyWith<_$CollectedTreasuresStateImpl>
      get copyWith => __$$CollectedTreasuresStateImplCopyWithImpl<
          _$CollectedTreasuresStateImpl>(this, _$identity);
}

abstract class _CollectedTreasuresState implements CollectedTreasuresState {
  const factory _CollectedTreasuresState(
      {required final List<String> favouriteTreasures,
      final List<Treasure> allCollectedTreasures,
      final Set<String> pendingFavouriteDeletions,
      final Set<String> pendingFavouriteAdditions,
      final CollectedTreasuresStatus status}) = _$CollectedTreasuresStateImpl;

  @override
  List<String> get favouriteTreasures;
  @override
  List<Treasure> get allCollectedTreasures;
  @override
  Set<String> get pendingFavouriteDeletions;
  @override
  Set<String> get pendingFavouriteAdditions;
  @override
  CollectedTreasuresStatus get status;
  @override
  @JsonKey(ignore: true)
  _$$CollectedTreasuresStateImplCopyWith<_$CollectedTreasuresStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
