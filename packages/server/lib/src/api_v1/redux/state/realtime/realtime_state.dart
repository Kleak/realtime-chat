import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_rpc_2/json_rpc_2.dart';

part 'realtime_state.freezed.dart';

@freezed
abstract class RealtimeState with _$RealtimeState {
  const factory RealtimeState({@Default([]) List<Peer> peers}) = _RealtimeState;
}
