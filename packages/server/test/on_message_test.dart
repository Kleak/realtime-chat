import 'dart:math';

import 'package:json_rpc_2/json_rpc_2.dart';
import 'package:redux/redux.dart';
import 'package:redux_thunk/redux_thunk.dart';
import 'package:server/src/redux/reducers/reducers.dart';
import 'package:server/src/redux/state/realtime/realtime.dart';
import 'package:server/src/redux/thunks/setup_and_add_peer.dart';
import 'package:test/test.dart';
import 'package:mockito/mockito.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

class PeerMock extends Mock implements Peer {}

class WebSocketChannelMock extends Mock implements WebSocketChannel {}

void main() {
  Store<RealtimeState> store;

  setUp(() {
    store = Store(
      realtimeReducer,
      initialState: RealtimeState(
        services: RealtimeServices(
          peerFactory: (_) => PeerMock(),
        ),
      ),
      distinct: true,
      middleware: [thunkMiddleware],
    );
  });

  test('on message', () async {
    final peer1 = PeerMock();
    final peer2 = PeerMock();
    expect(store.state.peers.length, equals(0));
    store.dispatch(setupAndAddPeer('kleak', peer1));
    expect(store.state.peers.length, equals(1));
    store.dispatch(setupAndAddPeer('Paul', peer2));
    expect(store.state.peers.length, equals(2));

    onMessage(store, peer1, 'kleak', Parameters('onMethod', {'msg': 'Hello world!'}));

    expect(verify(peer2.sendRequest('onMessage', {'msg': 'Hello world!', 'sender': 'kleak'})).callCount, equals(1));
    expect(verifyNever(peer1.sendRequest('onMessage', any)).callCount, equals(0));
  });
}
