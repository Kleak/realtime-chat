// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'app_services.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$AppServicesTearOff {
  const _$AppServicesTearOff();

// ignore: unused_element
  _AppServices call(
      {Peer Function(StreamChannel<String>) peerFactory =
          _defaultPeerFactory}) {
    return _AppServices(
      peerFactory: peerFactory,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $AppServices = _$AppServicesTearOff();

/// @nodoc
mixin _$AppServices {
  Peer Function(StreamChannel<String>) get peerFactory;

  $AppServicesCopyWith<AppServices> get copyWith;
}

/// @nodoc
abstract class $AppServicesCopyWith<$Res> {
  factory $AppServicesCopyWith(
          AppServices value, $Res Function(AppServices) then) =
      _$AppServicesCopyWithImpl<$Res>;
  $Res call({Peer Function(StreamChannel<String>) peerFactory});
}

/// @nodoc
class _$AppServicesCopyWithImpl<$Res> implements $AppServicesCopyWith<$Res> {
  _$AppServicesCopyWithImpl(this._value, this._then);

  final AppServices _value;
  // ignore: unused_field
  final $Res Function(AppServices) _then;

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
abstract class _$AppServicesCopyWith<$Res>
    implements $AppServicesCopyWith<$Res> {
  factory _$AppServicesCopyWith(
          _AppServices value, $Res Function(_AppServices) then) =
      __$AppServicesCopyWithImpl<$Res>;
  @override
  $Res call({Peer Function(StreamChannel<String>) peerFactory});
}

/// @nodoc
class __$AppServicesCopyWithImpl<$Res> extends _$AppServicesCopyWithImpl<$Res>
    implements _$AppServicesCopyWith<$Res> {
  __$AppServicesCopyWithImpl(
      _AppServices _value, $Res Function(_AppServices) _then)
      : super(_value, (v) => _then(v as _AppServices));

  @override
  _AppServices get _value => super._value as _AppServices;

  @override
  $Res call({
    Object peerFactory = freezed,
  }) {
    return _then(_AppServices(
      peerFactory: peerFactory == freezed
          ? _value.peerFactory
          : peerFactory as Peer Function(StreamChannel<String>),
    ));
  }
}

/// @nodoc
class _$_AppServices implements _AppServices {
  const _$_AppServices({this.peerFactory = _defaultPeerFactory})
      : assert(peerFactory != null);

  @JsonKey(defaultValue: _defaultPeerFactory)
  @override
  final Peer Function(StreamChannel<String>) peerFactory;

  @override
  String toString() {
    return 'AppServices(peerFactory: $peerFactory)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AppServices &&
            (identical(other.peerFactory, peerFactory) ||
                const DeepCollectionEquality()
                    .equals(other.peerFactory, peerFactory)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(peerFactory);

  @override
  _$AppServicesCopyWith<_AppServices> get copyWith =>
      __$AppServicesCopyWithImpl<_AppServices>(this, _$identity);
}

abstract class _AppServices implements AppServices {
  const factory _AppServices(
      {Peer Function(StreamChannel<String>) peerFactory}) = _$_AppServices;

  @override
  Peer Function(StreamChannel<String>) get peerFactory;
  @override
  _$AppServicesCopyWith<_AppServices> get copyWith;
}
