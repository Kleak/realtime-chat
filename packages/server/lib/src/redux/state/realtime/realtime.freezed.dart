// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'realtime.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$RealtimeStateTearOff {
  const _$RealtimeStateTearOff();

// ignore: unused_element
  _RealtimeState call(
      {List<Peer> peers = const [],
      Map<String, String> accounts = const {},
      RealtimeServices services = const RealtimeServices()}) {
    return _RealtimeState(
      peers: peers,
      accounts: accounts,
      services: services,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $RealtimeState = _$RealtimeStateTearOff();

/// @nodoc
mixin _$RealtimeState {
  List<Peer> get peers;
  Map<String, String> get accounts;
  RealtimeServices get services;

  $RealtimeStateCopyWith<RealtimeState> get copyWith;
}

/// @nodoc
abstract class $RealtimeStateCopyWith<$Res> {
  factory $RealtimeStateCopyWith(
          RealtimeState value, $Res Function(RealtimeState) then) =
      _$RealtimeStateCopyWithImpl<$Res>;
  $Res call(
      {List<Peer> peers,
      Map<String, String> accounts,
      RealtimeServices services});

  $RealtimeServicesCopyWith<$Res> get services;
}

/// @nodoc
class _$RealtimeStateCopyWithImpl<$Res>
    implements $RealtimeStateCopyWith<$Res> {
  _$RealtimeStateCopyWithImpl(this._value, this._then);

  final RealtimeState _value;
  // ignore: unused_field
  final $Res Function(RealtimeState) _then;

  @override
  $Res call({
    Object peers = freezed,
    Object accounts = freezed,
    Object services = freezed,
  }) {
    return _then(_value.copyWith(
      peers: peers == freezed ? _value.peers : peers as List<Peer>,
      accounts: accounts == freezed
          ? _value.accounts
          : accounts as Map<String, String>,
      services:
          services == freezed ? _value.services : services as RealtimeServices,
    ));
  }

  @override
  $RealtimeServicesCopyWith<$Res> get services {
    if (_value.services == null) {
      return null;
    }
    return $RealtimeServicesCopyWith<$Res>(_value.services, (value) {
      return _then(_value.copyWith(services: value));
    });
  }
}

/// @nodoc
abstract class _$RealtimeStateCopyWith<$Res>
    implements $RealtimeStateCopyWith<$Res> {
  factory _$RealtimeStateCopyWith(
          _RealtimeState value, $Res Function(_RealtimeState) then) =
      __$RealtimeStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<Peer> peers,
      Map<String, String> accounts,
      RealtimeServices services});

  @override
  $RealtimeServicesCopyWith<$Res> get services;
}

/// @nodoc
class __$RealtimeStateCopyWithImpl<$Res>
    extends _$RealtimeStateCopyWithImpl<$Res>
    implements _$RealtimeStateCopyWith<$Res> {
  __$RealtimeStateCopyWithImpl(
      _RealtimeState _value, $Res Function(_RealtimeState) _then)
      : super(_value, (v) => _then(v as _RealtimeState));

  @override
  _RealtimeState get _value => super._value as _RealtimeState;

  @override
  $Res call({
    Object peers = freezed,
    Object accounts = freezed,
    Object services = freezed,
  }) {
    return _then(_RealtimeState(
      peers: peers == freezed ? _value.peers : peers as List<Peer>,
      accounts: accounts == freezed
          ? _value.accounts
          : accounts as Map<String, String>,
      services:
          services == freezed ? _value.services : services as RealtimeServices,
    ));
  }
}

/// @nodoc
class _$_RealtimeState implements _RealtimeState {
  const _$_RealtimeState(
      {this.peers = const [],
      this.accounts = const {},
      this.services = const RealtimeServices()})
      : assert(peers != null),
        assert(accounts != null),
        assert(services != null);

  @JsonKey(defaultValue: const [])
  @override
  final List<Peer> peers;
  @JsonKey(defaultValue: const {})
  @override
  final Map<String, String> accounts;
  @JsonKey(defaultValue: const RealtimeServices())
  @override
  final RealtimeServices services;

  @override
  String toString() {
    return 'RealtimeState(peers: $peers, accounts: $accounts, services: $services)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RealtimeState &&
            (identical(other.peers, peers) ||
                const DeepCollectionEquality().equals(other.peers, peers)) &&
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
      const DeepCollectionEquality().hash(peers) ^
      const DeepCollectionEquality().hash(accounts) ^
      const DeepCollectionEquality().hash(services);

  @override
  _$RealtimeStateCopyWith<_RealtimeState> get copyWith =>
      __$RealtimeStateCopyWithImpl<_RealtimeState>(this, _$identity);
}

abstract class _RealtimeState implements RealtimeState {
  const factory _RealtimeState(
      {List<Peer> peers,
      Map<String, String> accounts,
      RealtimeServices services}) = _$_RealtimeState;

  @override
  List<Peer> get peers;
  @override
  Map<String, String> get accounts;
  @override
  RealtimeServices get services;
  @override
  _$RealtimeStateCopyWith<_RealtimeState> get copyWith;
}

/// @nodoc
class _$RealtimeServicesTearOff {
  const _$RealtimeServicesTearOff();

// ignore: unused_element
  _RealtimeServices call(
      {Peer Function(StreamChannel<String>) peerFactory =
          _defaultPeerFactory}) {
    return _RealtimeServices(
      peerFactory: peerFactory,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $RealtimeServices = _$RealtimeServicesTearOff();

/// @nodoc
mixin _$RealtimeServices {
  Peer Function(StreamChannel<String>) get peerFactory;

  $RealtimeServicesCopyWith<RealtimeServices> get copyWith;
}

/// @nodoc
abstract class $RealtimeServicesCopyWith<$Res> {
  factory $RealtimeServicesCopyWith(
          RealtimeServices value, $Res Function(RealtimeServices) then) =
      _$RealtimeServicesCopyWithImpl<$Res>;
  $Res call({Peer Function(StreamChannel<String>) peerFactory});
}

/// @nodoc
class _$RealtimeServicesCopyWithImpl<$Res>
    implements $RealtimeServicesCopyWith<$Res> {
  _$RealtimeServicesCopyWithImpl(this._value, this._then);

  final RealtimeServices _value;
  // ignore: unused_field
  final $Res Function(RealtimeServices) _then;

  @override
  $Res call({
    Object peerFactory = freezed,
  }) {
    return _then(_value.copyWith(
      peerFactory: peerFactory == freezed
          ? _value.peerFactory
          : peerFactory as Peer Function(StreamChannel<String>),
    ));
  }
}

/// @nodoc
abstract class _$RealtimeServicesCopyWith<$Res>
    implements $RealtimeServicesCopyWith<$Res> {
  factory _$RealtimeServicesCopyWith(
          _RealtimeServices value, $Res Function(_RealtimeServices) then) =
      __$RealtimeServicesCopyWithImpl<$Res>;
  @override
  $Res call({Peer Function(StreamChannel<String>) peerFactory});
}

/// @nodoc
class __$RealtimeServicesCopyWithImpl<$Res>
    extends _$RealtimeServicesCopyWithImpl<$Res>
    implements _$RealtimeServicesCopyWith<$Res> {
  __$RealtimeServicesCopyWithImpl(
      _RealtimeServices _value, $Res Function(_RealtimeServices) _then)
      : super(_value, (v) => _then(v as _RealtimeServices));

  @override
  _RealtimeServices get _value => super._value as _RealtimeServices;

  @override
  $Res call({
    Object peerFactory = freezed,
  }) {
    return _then(_RealtimeServices(
      peerFactory: peerFactory == freezed
          ? _value.peerFactory
          : peerFactory as Peer Function(StreamChannel<String>),
    ));
  }
}

/// @nodoc
class _$_RealtimeServices implements _RealtimeServices {
  const _$_RealtimeServices({this.peerFactory = _defaultPeerFactory})
      : assert(peerFactory != null);

  @JsonKey(defaultValue: _defaultPeerFactory)
  @override
  final Peer Function(StreamChannel<String>) peerFactory;

  @override
  String toString() {
    return 'RealtimeServices(peerFactory: $peerFactory)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RealtimeServices &&
            (identical(other.peerFactory, peerFactory) ||
                const DeepCollectionEquality()
                    .equals(other.peerFactory, peerFactory)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(peerFactory);

  @override
  _$RealtimeServicesCopyWith<_RealtimeServices> get copyWith =>
      __$RealtimeServicesCopyWithImpl<_RealtimeServices>(this, _$identity);
}

abstract class _RealtimeServices implements RealtimeServices {
  const factory _RealtimeServices(
      {Peer Function(StreamChannel<String>) peerFactory}) = _$_RealtimeServices;

  @override
  Peer Function(StreamChannel<String>) get peerFactory;
  @override
  _$RealtimeServicesCopyWith<_RealtimeServices> get copyWith;
}
