import 'package:redux/redux.dart';
import 'package:server/src/api_v1/middleware/check_authorization.dart';
import 'package:server/src/api_v1/redux/state/app_state.dart';
import 'package:server/src/api_v1/redux/thunks/setup_and_add_peer.dart';
import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';
import 'package:shelf_web_socket/shelf_web_socket.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

part 'realtime.g.dart';

class Realtime {
  final Store<AppState> _store;

  Realtime(this._store);

  Router get router => _$RealtimeRouter(this);

  @Route.get('/ws')
  Future<Response> websocket(Request request) =>
      Pipeline().addMiddleware(injectStore(_store)).addMiddleware(checkAuthorization()).addHandler((request) =>
          webSocketHandler((WebSocketChannel webSocket) => _onNewWebsocket(request, webSocket))(request))(request);

  void _onNewWebsocket(Request request, WebSocketChannel webSocket) {
    final account = request.context['account'] as MapEntry<String, String>;
    _store.dispatch(setupAndAddPeer(account.key, _store.state.services.peerFactory(webSocket.cast<String>())));
  }
}
