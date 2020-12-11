import 'package:json_rpc_2/json_rpc_2.dart';
import 'package:redux/redux.dart';
import 'package:redux_thunk/redux_thunk.dart';
import 'package:server/src/api_v1/redux/reducers/reducers.dart';
import 'package:server/src/api_v1/redux/services/app_services.dart';
import 'package:server/src/api_v1/redux/state/app_state.dart';
import 'package:server/src/api_v1/redux/thunks/setup_and_add_peer.dart';
import 'package:test/test.dart';
import 'package:mockito/mockito.dart';

class PeerMock extends Mock implements Peer {}

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

  test('setup and add peer', () async {
    final peer = PeerMock();
    when(peer.listen()).thenAnswer((realInvocation) => Future.value());
    expect(store.state.realtime.peers.length, equals(0));
    store.dispatch(setupAndAddPeer('kleak', peer));
    expect(store.state.realtime.peers.length, equals(1));
  });
}
