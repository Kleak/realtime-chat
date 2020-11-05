import 'package:json_rpc_2/json_rpc_2.dart';
import 'package:redux/redux.dart';
import 'package:redux_thunk/redux_thunk.dart';
import 'package:server/src/redux/actions/add_peer.dart';
import 'package:server/src/redux/actions/remove_peer.dart';
import 'package:server/src/redux/reducers/reducers.dart';
import 'package:server/src/redux/state/realtime/realtime.dart';
import 'package:test/test.dart';
import 'package:mockito/mockito.dart';

class PeerMock extends Mock implements Peer {}

void main() {
  Store<RealtimeState> store;

  setUp(() {
    store = Store(
      realtimeReducer,
      initialState: RealtimeState(),
      distinct: true,
      middleware: [thunkMiddleware],
    );
  });

  test('add peer', () async {
    expect(store.state.peers.length, equals(0));
    store.dispatch(AddPeerAction(PeerMock()));
    expect(store.state.peers.length, equals(1));
  });

  test('remove peer', () async {
    final peer = PeerMock();
    store.dispatch(AddPeerAction(peer));
    expect(store.state.peers.length, equals(1));
    store.dispatch(RemovePeerAction(peer));
    expect(store.state.peers.length, equals(0));
  });
}
