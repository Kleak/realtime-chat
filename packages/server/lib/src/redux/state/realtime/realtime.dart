import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_rpc_2/json_rpc_2.dart';
import 'package:stream_channel/stream_channel.dart';

part 'realtime.freezed.dart';

@freezed
abstract class RealtimeState with _$RealtimeState {
  const factory RealtimeState({
    @Default([]) List<Peer> peers,
    @Default({}) Map<String, String> accounts,
    @Default(RealtimeServices()) RealtimeServices services,
  }) = _RealtimeState;
}

typedef PeerFactory = Peer Function(StreamChannel<String>);

Peer _defaultPeerFactory(StreamChannel<String> streamChannel) => Peer(streamChannel);

@freezed
abstract class RealtimeServices with _$RealtimeServices {
  const factory RealtimeServices({@Default(_defaultPeerFactory) PeerFactory peerFactory}) = _RealtimeServices;
}
