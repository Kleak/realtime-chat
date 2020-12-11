import 'package:json_rpc_2/json_rpc_2.dart';
import 'package:pedantic/pedantic.dart';
import 'package:redux/redux.dart';
import 'package:redux_thunk/redux_thunk.dart';
import 'package:server/src/api_v1/redux/actions/add_peer.dart';
import 'package:server/src/api_v1/redux/actions/remove_peer.dart';
import 'package:server/src/api_v1/redux/state/app_state.dart';

void fallback(Parameters parameters) => print('fallback: ${parameters.value}');

Future<void> onMessage(Store<AppState> store, Peer peer, String username, Parameters parameters) async {
  final filteredPeers = store.state.realtime.peers.where((element) => element != peer);
  for (final peer in filteredPeers) {
    unawaited(peer.sendRequest('onMessage', {
      ...parameters.asMap,
      'sender': username,
    }));
  }
}

ThunkAction<AppState> setupAndAddPeer(String username, Peer peer) {
  return (Store<AppState> store) {
    peer.registerFallback(fallback);
    peer.registerMethod(
      'onMessage',
      (parameters) => onMessage(store, peer, username, parameters),
    );

    unawaited(peer.listen().then((_) => store.dispatch(RemovePeerAction(peer))));

    store.dispatch(AddPeerAction(peer));
  };
}
