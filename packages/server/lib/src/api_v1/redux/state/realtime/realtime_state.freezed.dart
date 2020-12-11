// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'realtime_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$RealtimeStateTearOff {
  const _$RealtimeStateTearOff();

// ignore: unused_element
  _RealtimeState call({List<Peer> peers = const []}) {
    return _RealtimeState(
      peers: peers,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $RealtimeState = _$RealtimeStateTearOff();

/// @nodoc
mixin _$RealtimeState {
  List<Peer> get peers;

  $RealtimeStateCopyWith<RealtimeState> get copyWith;
}

/// @nodoc
abstract class $RealtimeStateCopyWith<$Res> {
  factory $RealtimeStateCopyWith(
          RealtimeState value, $Res Function(RealtimeState) then) =
      _$RealtimeStateCopyWithImpl<$Res>;
  $Res call({List<Peer> peers});
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
  }) {
    return _then(_value.copyWith(
      peers: peers == freezed ? _value.peers : peers as List<Peer>,
    ));
  }
}

/// @nodoc
abstract class _$RealtimeStateCopyWith<$Res>
    implements $RealtimeStateCopyWith<$Res> {
  factory _$RealtimeStateCopyWith(
          _RealtimeState value, $Res Function(_RealtimeState) then) =
      __$RealtimeStateCopyWithImpl<$Res>;
  @override
  $Res call({List<Peer> peers});
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
  }) {
    return _then(_RealtimeState(
      peers: peers == freezed ? _value.peers : peers as List<Peer>,
    ));
  }
}

/// @nodoc
class _$_RealtimeState implements _RealtimeState {
  const _$_RealtimeState({this.peers = const []}) : assert(peers != null);

  @JsonKey(defaultValue: const [])
  @override
  final List<Peer> peers;

  @override
  String toString() {
    return 'RealtimeState(peers: $peers)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RealtimeState &&
            (identical(other.peers, peers) ||
                const DeepCollectionEquality().equals(other.peers, peers)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(peers);

  @override
  _$RealtimeStateCopyWith<_RealtimeState> get copyWith =>
      __$RealtimeStateCopyWithImpl<_RealtimeState>(this, _$identity);
}

abstract class _RealtimeState implements RealtimeState {
  const factory _RealtimeState({List<Peer> peers}) = _$_RealtimeState;

  @override
  List<Peer> get peers;
  @override
  _$RealtimeStateCopyWith<_RealtimeState> get copyWith;
}
