import 'package:json_rpc_2/json_rpc_2.dart';
import 'package:redux/redux.dart';
import 'package:redux_thunk/redux_thunk.dart';
import 'package:server/src/redux/reducers/reducers.dart';
import 'package:server/src/redux/state/realtime/realtime.dart';
import 'package:server/src/redux/thunks/setup_and_add_peer.dart';
import 'package:test/test.dart';
import 'package:mockito/mockito.dart';

class PeerMock extends Mock implements Peer {}

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

  test('setup and add peer', () async {
    expect(store.state.peers.length, equals(0));
    store.dispatch(setupAndAddPeer('kleak', PeerMock()));
    expect(store.state.peers.length, equals(1));
  });
}
