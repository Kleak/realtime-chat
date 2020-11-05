import 'dart:io';

import 'package:redux/redux.dart' hide Middleware;
import 'package:server/src/redux/state/realtime/realtime.dart';
import 'package:shelf/shelf.dart';

Middleware injectStore(Store<RealtimeState> store) {
  return (Handler innerHandler) {
    return (Request request) => innerHandler(
          request.change(
            context: {
              ...request.context,
              'store': store,
            },
          ),
        );
  };
}

final checkAuthorization = createMiddleware(
  requestHandler: (request) {
    final authorization = request.headers[HttpHeaders.authorizationHeader];
    final store = request.context['store'] as Store<RealtimeState>;
    final account =
        store.state.accounts.entries.firstWhere((element) => element.value == authorization.substring('Basic '.length));
    if (account == null) {
      return Response.notFound('account not found');
    }
    return null;
  },
);
