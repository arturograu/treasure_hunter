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
    required TResult Function(String id) treasureFavouriteStatusChanged,
    required TResult Function(List<Treasure> allCollectedTreasures)
        collectedTreasuresUpdated,
    required TResult Function(Set<String> favouriteTreasures)
        favouriteTreasuresUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? treasureFavouriteStatusChanged,
    TResult? Function(List<Treasure> allCollectedTreasures)?
        collectedTreasuresUpdated,
    TResult? Function(Set<String> favouriteTreasures)?
        favouriteTreasuresUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? treasureFavouriteStatusChanged,
    TResult Function(List<Treasure> allCollectedTreasures)?
        collectedTreasuresUpdated,
    TResult Function(Set<String> favouriteTreasures)? favouriteTreasuresUpdated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TreasureFavouriteStatusChanged value)
        treasureFavouriteStatusChanged,
    required TResult Function(CollectedTreasuresUpdated value)
        collectedTreasuresUpdated,
    required TResult Function(FavouriteTreasuresUpdated value)
        favouriteTreasuresUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TreasureFavouriteStatusChanged value)?
        treasureFavouriteStatusChanged,
    TResult? Function(CollectedTreasuresUpdated value)?
        collectedTreasuresUpdated,
    TResult? Function(FavouriteTreasuresUpdated value)?
        favouriteTreasuresUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TreasureFavouriteStatusChanged value)?
        treasureFavouriteStatusChanged,
    TResult Function(CollectedTreasuresUpdated value)?
        collectedTreasuresUpdated,
    TResult Function(FavouriteTreasuresUpdated value)?
        favouriteTreasuresUpdated,
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
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$TreasureFavouriteStatusChangedImpl
    implements TreasureFavouriteStatusChanged {
  const _$TreasureFavouriteStatusChangedImpl(this.id);

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
    required TResult Function(String id) treasureFavouriteStatusChanged,
    required TResult Function(List<Treasure> allCollectedTreasures)
        collectedTreasuresUpdated,
    required TResult Function(Set<String> favouriteTreasures)
        favouriteTreasuresUpdated,
  }) {
    return treasureFavouriteStatusChanged(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? treasureFavouriteStatusChanged,
    TResult? Function(List<Treasure> allCollectedTreasures)?
        collectedTreasuresUpdated,
    TResult? Function(Set<String> favouriteTreasures)?
        favouriteTreasuresUpdated,
  }) {
    return treasureFavouriteStatusChanged?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? treasureFavouriteStatusChanged,
    TResult Function(List<Treasure> allCollectedTreasures)?
        collectedTreasuresUpdated,
    TResult Function(Set<String> favouriteTreasures)? favouriteTreasuresUpdated,
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
    required TResult Function(TreasureFavouriteStatusChanged value)
        treasureFavouriteStatusChanged,
    required TResult Function(CollectedTreasuresUpdated value)
        collectedTreasuresUpdated,
    required TResult Function(FavouriteTreasuresUpdated value)
        favouriteTreasuresUpdated,
  }) {
    return treasureFavouriteStatusChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TreasureFavouriteStatusChanged value)?
        treasureFavouriteStatusChanged,
    TResult? Function(CollectedTreasuresUpdated value)?
        collectedTreasuresUpdated,
    TResult? Function(FavouriteTreasuresUpdated value)?
        favouriteTreasuresUpdated,
  }) {
    return treasureFavouriteStatusChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TreasureFavouriteStatusChanged value)?
        treasureFavouriteStatusChanged,
    TResult Function(CollectedTreasuresUpdated value)?
        collectedTreasuresUpdated,
    TResult Function(FavouriteTreasuresUpdated value)?
        favouriteTreasuresUpdated,
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
  const factory TreasureFavouriteStatusChanged(final String id) =
      _$TreasureFavouriteStatusChangedImpl;

  String get id;
  @JsonKey(ignore: true)
  _$$TreasureFavouriteStatusChangedImplCopyWith<
          _$TreasureFavouriteStatusChangedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CollectedTreasuresUpdatedImplCopyWith<$Res> {
  factory _$$CollectedTreasuresUpdatedImplCopyWith(
          _$CollectedTreasuresUpdatedImpl value,
          $Res Function(_$CollectedTreasuresUpdatedImpl) then) =
      __$$CollectedTreasuresUpdatedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Treasure> allCollectedTreasures});
}

/// @nodoc
class __$$CollectedTreasuresUpdatedImplCopyWithImpl<$Res>
    extends _$CollectedTreasuresEventCopyWithImpl<$Res,
        _$CollectedTreasuresUpdatedImpl>
    implements _$$CollectedTreasuresUpdatedImplCopyWith<$Res> {
  __$$CollectedTreasuresUpdatedImplCopyWithImpl(
      _$CollectedTreasuresUpdatedImpl _value,
      $Res Function(_$CollectedTreasuresUpdatedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? allCollectedTreasures = null,
  }) {
    return _then(_$CollectedTreasuresUpdatedImpl(
      allCollectedTreasures: null == allCollectedTreasures
          ? _value._allCollectedTreasures
          : allCollectedTreasures // ignore: cast_nullable_to_non_nullable
              as List<Treasure>,
    ));
  }
}

/// @nodoc

class _$CollectedTreasuresUpdatedImpl implements CollectedTreasuresUpdated {
  const _$CollectedTreasuresUpdatedImpl(
      {required final List<Treasure> allCollectedTreasures})
      : _allCollectedTreasures = allCollectedTreasures;

  final List<Treasure> _allCollectedTreasures;
  @override
  List<Treasure> get allCollectedTreasures {
    if (_allCollectedTreasures is EqualUnmodifiableListView)
      return _allCollectedTreasures;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_allCollectedTreasures);
  }

  @override
  String toString() {
    return 'CollectedTreasuresEvent.collectedTreasuresUpdated(allCollectedTreasures: $allCollectedTreasures)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CollectedTreasuresUpdatedImpl &&
            const DeepCollectionEquality()
                .equals(other._allCollectedTreasures, _allCollectedTreasures));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_allCollectedTreasures));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CollectedTreasuresUpdatedImplCopyWith<_$CollectedTreasuresUpdatedImpl>
      get copyWith => __$$CollectedTreasuresUpdatedImplCopyWithImpl<
          _$CollectedTreasuresUpdatedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) treasureFavouriteStatusChanged,
    required TResult Function(List<Treasure> allCollectedTreasures)
        collectedTreasuresUpdated,
    required TResult Function(Set<String> favouriteTreasures)
        favouriteTreasuresUpdated,
  }) {
    return collectedTreasuresUpdated(allCollectedTreasures);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? treasureFavouriteStatusChanged,
    TResult? Function(List<Treasure> allCollectedTreasures)?
        collectedTreasuresUpdated,
    TResult? Function(Set<String> favouriteTreasures)?
        favouriteTreasuresUpdated,
  }) {
    return collectedTreasuresUpdated?.call(allCollectedTreasures);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? treasureFavouriteStatusChanged,
    TResult Function(List<Treasure> allCollectedTreasures)?
        collectedTreasuresUpdated,
    TResult Function(Set<String> favouriteTreasures)? favouriteTreasuresUpdated,
    required TResult orElse(),
  }) {
    if (collectedTreasuresUpdated != null) {
      return collectedTreasuresUpdated(allCollectedTreasures);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TreasureFavouriteStatusChanged value)
        treasureFavouriteStatusChanged,
    required TResult Function(CollectedTreasuresUpdated value)
        collectedTreasuresUpdated,
    required TResult Function(FavouriteTreasuresUpdated value)
        favouriteTreasuresUpdated,
  }) {
    return collectedTreasuresUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TreasureFavouriteStatusChanged value)?
        treasureFavouriteStatusChanged,
    TResult? Function(CollectedTreasuresUpdated value)?
        collectedTreasuresUpdated,
    TResult? Function(FavouriteTreasuresUpdated value)?
        favouriteTreasuresUpdated,
  }) {
    return collectedTreasuresUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TreasureFavouriteStatusChanged value)?
        treasureFavouriteStatusChanged,
    TResult Function(CollectedTreasuresUpdated value)?
        collectedTreasuresUpdated,
    TResult Function(FavouriteTreasuresUpdated value)?
        favouriteTreasuresUpdated,
    required TResult orElse(),
  }) {
    if (collectedTreasuresUpdated != null) {
      return collectedTreasuresUpdated(this);
    }
    return orElse();
  }
}

abstract class CollectedTreasuresUpdated implements CollectedTreasuresEvent {
  const factory CollectedTreasuresUpdated(
          {required final List<Treasure> allCollectedTreasures}) =
      _$CollectedTreasuresUpdatedImpl;

  List<Treasure> get allCollectedTreasures;
  @JsonKey(ignore: true)
  _$$CollectedTreasuresUpdatedImplCopyWith<_$CollectedTreasuresUpdatedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FavouriteTreasuresUpdatedImplCopyWith<$Res> {
  factory _$$FavouriteTreasuresUpdatedImplCopyWith(
          _$FavouriteTreasuresUpdatedImpl value,
          $Res Function(_$FavouriteTreasuresUpdatedImpl) then) =
      __$$FavouriteTreasuresUpdatedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Set<String> favouriteTreasures});
}

/// @nodoc
class __$$FavouriteTreasuresUpdatedImplCopyWithImpl<$Res>
    extends _$CollectedTreasuresEventCopyWithImpl<$Res,
        _$FavouriteTreasuresUpdatedImpl>
    implements _$$FavouriteTreasuresUpdatedImplCopyWith<$Res> {
  __$$FavouriteTreasuresUpdatedImplCopyWithImpl(
      _$FavouriteTreasuresUpdatedImpl _value,
      $Res Function(_$FavouriteTreasuresUpdatedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? favouriteTreasures = null,
  }) {
    return _then(_$FavouriteTreasuresUpdatedImpl(
      favouriteTreasures: null == favouriteTreasures
          ? _value._favouriteTreasures
          : favouriteTreasures // ignore: cast_nullable_to_non_nullable
              as Set<String>,
    ));
  }
}

/// @nodoc

class _$FavouriteTreasuresUpdatedImpl implements FavouriteTreasuresUpdated {
  const _$FavouriteTreasuresUpdatedImpl(
      {required final Set<String> favouriteTreasures})
      : _favouriteTreasures = favouriteTreasures;

  final Set<String> _favouriteTreasures;
  @override
  Set<String> get favouriteTreasures {
    if (_favouriteTreasures is EqualUnmodifiableSetView)
      return _favouriteTreasures;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_favouriteTreasures);
  }

  @override
  String toString() {
    return 'CollectedTreasuresEvent.favouriteTreasuresUpdated(favouriteTreasures: $favouriteTreasures)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FavouriteTreasuresUpdatedImpl &&
            const DeepCollectionEquality()
                .equals(other._favouriteTreasures, _favouriteTreasures));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_favouriteTreasures));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FavouriteTreasuresUpdatedImplCopyWith<_$FavouriteTreasuresUpdatedImpl>
      get copyWith => __$$FavouriteTreasuresUpdatedImplCopyWithImpl<
          _$FavouriteTreasuresUpdatedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) treasureFavouriteStatusChanged,
    required TResult Function(List<Treasure> allCollectedTreasures)
        collectedTreasuresUpdated,
    required TResult Function(Set<String> favouriteTreasures)
        favouriteTreasuresUpdated,
  }) {
    return favouriteTreasuresUpdated(favouriteTreasures);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? treasureFavouriteStatusChanged,
    TResult? Function(List<Treasure> allCollectedTreasures)?
        collectedTreasuresUpdated,
    TResult? Function(Set<String> favouriteTreasures)?
        favouriteTreasuresUpdated,
  }) {
    return favouriteTreasuresUpdated?.call(favouriteTreasures);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? treasureFavouriteStatusChanged,
    TResult Function(List<Treasure> allCollectedTreasures)?
        collectedTreasuresUpdated,
    TResult Function(Set<String> favouriteTreasures)? favouriteTreasuresUpdated,
    required TResult orElse(),
  }) {
    if (favouriteTreasuresUpdated != null) {
      return favouriteTreasuresUpdated(favouriteTreasures);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TreasureFavouriteStatusChanged value)
        treasureFavouriteStatusChanged,
    required TResult Function(CollectedTreasuresUpdated value)
        collectedTreasuresUpdated,
    required TResult Function(FavouriteTreasuresUpdated value)
        favouriteTreasuresUpdated,
  }) {
    return favouriteTreasuresUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TreasureFavouriteStatusChanged value)?
        treasureFavouriteStatusChanged,
    TResult? Function(CollectedTreasuresUpdated value)?
        collectedTreasuresUpdated,
    TResult? Function(FavouriteTreasuresUpdated value)?
        favouriteTreasuresUpdated,
  }) {
    return favouriteTreasuresUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TreasureFavouriteStatusChanged value)?
        treasureFavouriteStatusChanged,
    TResult Function(CollectedTreasuresUpdated value)?
        collectedTreasuresUpdated,
    TResult Function(FavouriteTreasuresUpdated value)?
        favouriteTreasuresUpdated,
    required TResult orElse(),
  }) {
    if (favouriteTreasuresUpdated != null) {
      return favouriteTreasuresUpdated(this);
    }
    return orElse();
  }
}

abstract class FavouriteTreasuresUpdated implements CollectedTreasuresEvent {
  const factory FavouriteTreasuresUpdated(
          {required final Set<String> favouriteTreasures}) =
      _$FavouriteTreasuresUpdatedImpl;

  Set<String> get favouriteTreasures;
  @JsonKey(ignore: true)
  _$$FavouriteTreasuresUpdatedImplCopyWith<_$FavouriteTreasuresUpdatedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CollectedTreasuresState {
  Map<String, Treasure> get allCollectedTreasures =>
      throw _privateConstructorUsedError;
  Set<String> get favouriteTreasures => throw _privateConstructorUsedError;
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
      {Map<String, Treasure> allCollectedTreasures,
      Set<String> favouriteTreasures,
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
    Object? allCollectedTreasures = null,
    Object? favouriteTreasures = null,
    Object? pendingFavouriteDeletions = null,
    Object? pendingFavouriteAdditions = null,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      allCollectedTreasures: null == allCollectedTreasures
          ? _value.allCollectedTreasures
          : allCollectedTreasures // ignore: cast_nullable_to_non_nullable
              as Map<String, Treasure>,
      favouriteTreasures: null == favouriteTreasures
          ? _value.favouriteTreasures
          : favouriteTreasures // ignore: cast_nullable_to_non_nullable
              as Set<String>,
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
      {Map<String, Treasure> allCollectedTreasures,
      Set<String> favouriteTreasures,
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
    Object? allCollectedTreasures = null,
    Object? favouriteTreasures = null,
    Object? pendingFavouriteDeletions = null,
    Object? pendingFavouriteAdditions = null,
    Object? status = null,
  }) {
    return _then(_$CollectedTreasuresStateImpl(
      allCollectedTreasures: null == allCollectedTreasures
          ? _value._allCollectedTreasures
          : allCollectedTreasures // ignore: cast_nullable_to_non_nullable
              as Map<String, Treasure>,
      favouriteTreasures: null == favouriteTreasures
          ? _value._favouriteTreasures
          : favouriteTreasures // ignore: cast_nullable_to_non_nullable
              as Set<String>,
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
      {required final Map<String, Treasure> allCollectedTreasures,
      required final Set<String> favouriteTreasures,
      final Set<String> pendingFavouriteDeletions = const <String>{},
      final Set<String> pendingFavouriteAdditions = const <String>{},
      this.status = CollectedTreasuresStatus.initial})
      : _allCollectedTreasures = allCollectedTreasures,
        _favouriteTreasures = favouriteTreasures,
        _pendingFavouriteDeletions = pendingFavouriteDeletions,
        _pendingFavouriteAdditions = pendingFavouriteAdditions;

  final Map<String, Treasure> _allCollectedTreasures;
  @override
  Map<String, Treasure> get allCollectedTreasures {
    if (_allCollectedTreasures is EqualUnmodifiableMapView)
      return _allCollectedTreasures;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_allCollectedTreasures);
  }

  final Set<String> _favouriteTreasures;
  @override
  Set<String> get favouriteTreasures {
    if (_favouriteTreasures is EqualUnmodifiableSetView)
      return _favouriteTreasures;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_favouriteTreasures);
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
    return 'CollectedTreasuresState(allCollectedTreasures: $allCollectedTreasures, favouriteTreasures: $favouriteTreasures, pendingFavouriteDeletions: $pendingFavouriteDeletions, pendingFavouriteAdditions: $pendingFavouriteAdditions, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CollectedTreasuresStateImpl &&
            const DeepCollectionEquality()
                .equals(other._allCollectedTreasures, _allCollectedTreasures) &&
            const DeepCollectionEquality()
                .equals(other._favouriteTreasures, _favouriteTreasures) &&
            const DeepCollectionEquality().equals(
                other._pendingFavouriteDeletions, _pendingFavouriteDeletions) &&
            const DeepCollectionEquality().equals(
                other._pendingFavouriteAdditions, _pendingFavouriteAdditions) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_allCollectedTreasures),
      const DeepCollectionEquality().hash(_favouriteTreasures),
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
      {required final Map<String, Treasure> allCollectedTreasures,
      required final Set<String> favouriteTreasures,
      final Set<String> pendingFavouriteDeletions,
      final Set<String> pendingFavouriteAdditions,
      final CollectedTreasuresStatus status}) = _$CollectedTreasuresStateImpl;

  @override
  Map<String, Treasure> get allCollectedTreasures;
  @override
  Set<String> get favouriteTreasures;
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
