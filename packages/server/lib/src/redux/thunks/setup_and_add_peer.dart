import 'package:json_rpc_2/json_rpc_2.dart';
import 'package:pedantic/pedantic.dart';
import 'package:redux/redux.dart';
import 'package:redux_thunk/redux_thunk.dart';
import 'package:server/src/redux/actions/add_peer.dart';
import 'package:server/src/redux/actions/remove_peer.dart';
import 'package:server/src/redux/state/realtime/realtime.dart';

void fallback(Parameters parameters) => print('fallback: ${parameters.value}');

Future<void> onMessage(Store<RealtimeState> store, Peer peer, String username, Parameters parameters) async {
  final filteredPeers = store.state.peers.where((element) => element != peer);
  for (final peer in filteredPeers) {
    unawaited(peer.sendRequest('onMessage', {
      ...parameters.asMap,
      'sender': username,
    }));
  }
}

ThunkAction<RealtimeState> setupAndAddPeer(String username, Peer peer) {
  return (Store<RealtimeState> store) {
    peer.registerFallback(fallback);
    peer.registerMethod(
      'onMessage',
      (parameters) => onMessage(store, peer, username, parameters),
    );

    unawaited(peer.listen().then((_) => store.dispatch(RemovePeerAction(peer))));

    store.dispatch(AddPeerAction(peer));
  };
}
