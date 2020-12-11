import 'package:json_rpc_2/json_rpc_2.dart';
import 'package:redux/redux.dart';
import 'package:server/src/api_v1/redux/actions/add_peer.dart';
import 'package:server/src/api_v1/redux/actions/remove_peer.dart';

Reducer<List<Peer>> peersReducer = combineReducers<List<Peer>>([
  TypedReducer(addPeer),
  TypedReducer(removePeer),
]);

List<Peer> addPeer(List<Peer> peers, AddPeerAction action) => [...peers, action.peer];

List<Peer> removePeer(List<Peer> peers, RemovePeerAction action) =>
    peers.where((element) => element != action.peer).toList();
