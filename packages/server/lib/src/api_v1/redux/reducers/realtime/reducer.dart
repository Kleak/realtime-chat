import 'package:server/src/api_v1/redux/reducers/realtime/peers.dart';
import 'package:server/src/api_v1/redux/state/realtime/realtime_state.dart';

RealtimeState realtimeReducer(RealtimeState state, action) => state.copyWith(peers: peersReducer(state.peers, action));
