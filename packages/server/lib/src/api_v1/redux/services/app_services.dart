import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_rpc_2/json_rpc_2.dart';
import 'package:stream_channel/stream_channel.dart';

part 'app_services.freezed.dart';

typedef PeerFactory = Peer Function(StreamChannel<String>);

Peer _defaultPeerFactory(StreamChannel<String> streamChannel) => Peer(streamChannel);

@freezed
abstract class AppServices with _$AppServices {
  const factory AppServices({@Default(_defaultPeerFactory) PeerFactory peerFactory}) = _AppServices;
}
