// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'app_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$AppStateTearOff {
  const _$AppStateTearOff();

// ignore: unused_element
  _AppState call(
      {RealtimeState realtime = const RealtimeState(),
      Map<String, String> accounts = const {},
      AppServices services = const AppServices()}) {
    return _AppState(
      realtime: realtime,
      accounts: accounts,
      services: services,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $AppState = _$AppStateTearOff();

/// @nodoc
mixin _$AppState {
  RealtimeState get realtime;
  Map<String, String> get accounts;
  AppServices get services;

  $AppStateCopyWith<AppState> get copyWith;
}

/// @nodoc
abstract class $AppStateCopyWith<$Res> {
  factory $AppStateCopyWith(AppState value, $Res Function(AppState) then) =
      _$AppStateCopyWithImpl<$Res>;
  $Res call(
      {RealtimeState realtime,
      Map<String, String> accounts,
      AppServices services});

  $RealtimeStateCopyWith<$Res> get realtime;
  $AppServicesCopyWith<$Res> get services;
}

/// @nodoc
class _$AppStateCopyWithImpl<$Res> implements $AppStateCopyWith<$Res> {
  _$AppStateCopyWithImpl(this._value, this._then);

  final AppState _value;
  // ignore: unused_field
  final $Res Function(AppState) _then;

  @override
  $Res call({
    Object realtime = freezed,
    Object accounts = freezed,
    Object services = freezed,
  }) {
    return _then(_value.copyWith(
      realtime:
          realtime == freezed ? _value.realtime : realtime as RealtimeState,
      accounts: accounts == freezed
          ? _value.accounts
          : accounts as Map<String, String>,
      services: services == freezed ? _value.services : services as AppServices,
    ));
  }

  @override
  $RealtimeStateCopyWith<$Res> get realtime {
    if (_value.realtime == null) {
      return null;
    }
    return $RealtimeStateCopyWith<$Res>(_value.realtime, (value) {
      return _then(_value.copyWith(realtime: value));
    });
  }

  @override
  $AppServicesCopyWith<$Res> get services {
    if (_value.services == null) {
      return null;
    }
    return $AppServicesCopyWith<$Res>(_value.services, (value) {
      return _then(_value.copyWith(services: value));
    });
  }
}

/// @nodoc
abstract class _$AppStateCopyWith<$Res> implements $AppStateCopyWith<$Res> {
  factory _$AppStateCopyWith(_AppState value, $Res Function(_AppState) then) =
      __$AppStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {RealtimeState realtime,
      Map<String, String> accounts,
      AppServices services});

  @override
  $RealtimeStateCopyWith<$Res> get realtime;
  @override
  $AppServicesCopyWith<$Res> get services;
}

/// @nodoc
class __$AppStateCopyWithImpl<$Res> extends _$AppStateCopyWithImpl<$Res>
    implements _$AppStateCopyWith<$Res> {
  __$AppStateCopyWithImpl(_AppState _value, $Res Function(_AppState) _then)
      : super(_value, (v) => _then(v as _AppState));

  @override
  _AppState get _value => super._value as _AppState;

  @override
  $Res call({
    Object realtime = freezed,
    Object accounts = freezed,
    Object services = freezed,
  }) {
    return _then(_AppState(
      realtime:
          realtime == freezed ? _value.realtime : realtime as RealtimeState,
      accounts: accounts == freezed
          ? _value.accounts
          : accounts as Map<String, String>,
      services: services == freezed ? _value.services : services as AppServices,
    ));
  }
}

/// @nodoc
class _$_AppState implements _AppState {
  const _$_AppState(
      {this.realtime = const RealtimeState(),
      this.accounts = const {},
      this.services = const AppServices()})
      : assert(realtime != null),
        assert(accounts != null),
        assert(services != null);

  @JsonKey(defaultValue: const RealtimeState())
  @override
  final RealtimeState realtime;
  @JsonKey(defaultValue: const {})
  @override
  final Map<String, String> accounts;
  @JsonKey(defaultValue: const AppServices())
  @override
  final AppServices services;

  @override
  String toString() {
    return 'AppState(realtime: $realtime, accounts: $accounts, services: $services)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AppState &&
            (identical(other.realtime, realtime) ||
                const DeepCollectionEquality()
                    .equals(other.realtime, realtime)) &&
            (identical(other.accounts, accounts) ||
                const DeepCollectionEquality()
                    .equals(other.accounts, accounts)) &&
            (identical(other.services, services) ||
                const DeepCollectionEquality()
                    .equals(other.services, services)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(realtime) ^
      const DeepCollectionEquality().hash(accounts) ^
      const DeepCollectionEquality().hash(services);

  @override
  _$AppStateCopyWith<_AppState> get copyWith =>
      __$AppStateCopyWithImpl<_AppState>(this, _$identity);
}

abstract class _AppState implements AppState {
  const factory _AppState(
      {RealtimeState realtime,
      Map<String, String> accounts,
      AppServices services}) = _$_AppState;

  @override
  RealtimeState get realtime;
  @override
  Map<String, String> get accounts;
  @override
  AppServices get services;
  @override
  _$AppStateCopyWith<_AppState> get copyWith;
}

/// @nodoc
class _$LastUpdatedTearOff {
  const _$LastUpdatedTearOff();

// ignore: unused_element
  _LastUpdated call(DateTime lastUpdated) {
    return _LastUpdated(
      lastUpdated,
    );
  }

// ignore: unused_element
  NeverUpdated never() {
    return const NeverUpdated();
  }
}

/// @nodoc
// ignore: unused_element
const $LastUpdated = _$LastUpdatedTearOff();

/// @nodoc
mixin _$LastUpdated {
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(DateTime lastUpdated), {
    @required Result never(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(DateTime lastUpdated), {
    Result never(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(_LastUpdated value), {
    @required Result never(NeverUpdated value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(_LastUpdated value), {
    Result never(NeverUpdated value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $LastUpdatedCopyWith<$Res> {
  factory $LastUpdatedCopyWith(
          LastUpdated value, $Res Function(LastUpdated) then) =
      _$LastUpdatedCopyWithImpl<$Res>;
}

/// @nodoc
class _$LastUpdatedCopyWithImpl<$Res> implements $LastUpdatedCopyWith<$Res> {
  _$LastUpdatedCopyWithImpl(this._value, this._then);

  final LastUpdated _value;
  // ignore: unused_field
  final $Res Function(LastUpdated) _then;
}

/// @nodoc
abstract class _$LastUpdatedCopyWith<$Res> {
  factory _$LastUpdatedCopyWith(
          _LastUpdated value, $Res Function(_LastUpdated) then) =
      __$LastUpdatedCopyWithImpl<$Res>;
  $Res call({DateTime lastUpdated});
}

/// @nodoc
class __$LastUpdatedCopyWithImpl<$Res> extends _$LastUpdatedCopyWithImpl<$Res>
    implements _$LastUpdatedCopyWith<$Res> {
  __$LastUpdatedCopyWithImpl(
      _LastUpdated _value, $Res Function(_LastUpdated) _then)
      : super(_value, (v) => _then(v as _LastUpdated));

  @override
  _LastUpdated get _value => super._value as _LastUpdated;

  @override
  $Res call({
    Object lastUpdated = freezed,
  }) {
    return _then(_LastUpdated(
      lastUpdated == freezed ? _value.lastUpdated : lastUpdated as DateTime,
    ));
  }
}

/// @nodoc
class _$_LastUpdated implements _LastUpdated {
  const _$_LastUpdated(this.lastUpdated) : assert(lastUpdated != null);

  @override
  final DateTime lastUpdated;

  @override
  String toString() {
    return 'LastUpdated(lastUpdated: $lastUpdated)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LastUpdated &&
            (identical(other.lastUpdated, lastUpdated) ||
                const DeepCollectionEquality()
                    .equals(other.lastUpdated, lastUpdated)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(lastUpdated);

  @override
  _$LastUpdatedCopyWith<_LastUpdated> get copyWith =>
      __$LastUpdatedCopyWithImpl<_LastUpdated>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(DateTime lastUpdated), {
    @required Result never(),
  }) {
    assert($default != null);
    assert(never != null);
    return $default(lastUpdated);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(DateTime lastUpdated), {
    Result never(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(lastUpdated);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(_LastUpdated value), {
    @required Result never(NeverUpdated value),
  }) {
    assert($default != null);
    assert(never != null);
    return $default(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(_LastUpdated value), {
    Result never(NeverUpdated value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class _LastUpdated implements LastUpdated {
  const factory _LastUpdated(DateTime lastUpdated) = _$_LastUpdated;

  DateTime get lastUpdated;
  _$LastUpdatedCopyWith<_LastUpdated> get copyWith;
}

/// @nodoc
abstract class $NeverUpdatedCopyWith<$Res> {
  factory $NeverUpdatedCopyWith(
          NeverUpdated value, $Res Function(NeverUpdated) then) =
      _$NeverUpdatedCopyWithImpl<$Res>;
}

/// @nodoc
class _$NeverUpdatedCopyWithImpl<$Res> extends _$LastUpdatedCopyWithImpl<$Res>
    implements $NeverUpdatedCopyWith<$Res> {
  _$NeverUpdatedCopyWithImpl(
      NeverUpdated _value, $Res Function(NeverUpdated) _then)
      : super(_value, (v) => _then(v as NeverUpdated));

  @override
  NeverUpdated get _value => super._value as NeverUpdated;
}

/// @nodoc
class _$NeverUpdated implements NeverUpdated {
  const _$NeverUpdated();

  @override
  String toString() {
    return 'LastUpdated.never()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is NeverUpdated);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(DateTime lastUpdated), {
    @required Result never(),
  }) {
    assert($default != null);
    assert(never != null);
    return never();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(DateTime lastUpdated), {
    Result never(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (never != null) {
      return never();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(_LastUpdated value), {
    @required Result never(NeverUpdated value),
  }) {
    assert($default != null);
    assert(never != null);
    return never(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(_LastUpdated value), {
    Result never(NeverUpdated value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (never != null) {
      return never(this);
    }
    return orElse();
  }
}

abstract class NeverUpdated implements LastUpdated {
  const factory NeverUpdated() = _$NeverUpdated;
}
