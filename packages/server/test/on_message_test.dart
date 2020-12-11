import 'package:json_rpc_2/json_rpc_2.dart';
import 'package:redux/redux.dart';
import 'package:redux_thunk/redux_thunk.dart';
import 'package:server/src/api_v1/redux/reducers/reducers.dart';
import 'package:server/src/api_v1/redux/services/app_services.dart';
import 'package:server/src/api_v1/redux/state/app_state.dart';
import 'package:server/src/api_v1/redux/thunks/setup_and_add_peer.dart';
import 'package:test/test.dart';
import 'package:mockito/mockito.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

class PeerMock extends Mock implements Peer {}

class WebSocketChannelMock extends Mock implements WebSocketChannel {}

void main() {
  Store<AppState> store;

  setUp(() {
    store = Store(
      appReducer,
      initialState: AppState(
        services: AppServices(
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
    when(peer1.listen()).thenAnswer((realInvocation) => Future.value());
    when(peer2.listen()).thenAnswer((realInvocation) => Future.value());
    expect(store.state.realtime.peers.length, equals(0));
    store.dispatch(setupAndAddPeer('kleak', peer1));
    expect(store.state.realtime.peers.length, equals(1));
    store.dispatch(setupAndAddPeer('Paul', peer2));
    expect(store.state.realtime.peers.length, equals(2));

    await onMessage(store, peer1, 'kleak', Parameters('onMethod', {'msg': 'Hello world!'}));

    expect(verify(peer2.sendRequest('onMessage', {'msg': 'Hello world!', 'sender': 'kleak'})).callCount, equals(1));
    expect(verifyNever(peer1.sendRequest('onMessage', any)).callCount, equals(0));
  });
}
