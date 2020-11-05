import 'dart:convert';
import 'dart:io';

import 'package:redux/redux.dart';
import 'package:redux_thunk/redux_thunk.dart';
import 'package:server/src/middleware/check_authorization.dart';
import 'package:server/src/redux/actions/add_account.dart';
import 'package:server/src/redux/reducers/reducers.dart';
import 'package:server/src/redux/state/realtime/realtime.dart';
import 'package:server/src/redux/thunks/create_account.dart';
import 'package:server/src/redux/thunks/setup_and_add_peer.dart';
import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';
import 'package:shelf_web_socket/shelf_web_socket.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

class Realtime {
  Store<RealtimeState> _store;

  Realtime() {
    _store = Store(
      realtimeReducer,
      initialState: RealtimeState(),
      distinct: true,
      middleware: [thunkMiddleware],
    );
  }

  Router get router {
    final router = Router();
    router.get(
      '/realtime/ws',
      Pipeline().addMiddleware(injectStore(_store)).addMiddleware(checkAuthorization).addHandler(
          (request) => webSocketHandler((WebSocketChannel webSocket) => onNewWebsocket(request, webSocket))(request)),
    );

    router.post('/account', (Request request) async {
      final data = json.decode(await request.readAsString());
      if (data is! Map) {
        return Response(HttpStatus.badRequest);
      }
      Map body = data as Map<String, dynamic>;
      if (!body.containsKey('username') && !body.containsKey('basic')) {
        return Response(HttpStatus.badRequest);
      }
      final username = body['username'] as String;
      final auth = (body['basic'] as String);

      if (_store.state.accounts.containsKey(username)) {
        return Response(HttpStatus.conflict);
      }
      _store.dispatch(createAccount(body['username'], auth));
      return Response.ok('');
    });
    return router;
  }

  void onNewWebsocket(Request request, WebSocketChannel webSocket) {
    final authorization = request.headers[HttpHeaders.authorizationHeader].substring('Basic '.length);
    final account = _store.state.accounts.entries.firstWhere((element) => element.value == authorization);
    _store.dispatch(setupAndAddPeer(account.key, _store.state.services.peerFactory(webSocket.cast<String>())));
  }
}
