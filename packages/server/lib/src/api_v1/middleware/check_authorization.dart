import 'dart:io';

import 'package:redux/redux.dart' hide Middleware;
import 'package:server/src/api_v1/redux/state/app_state.dart';
import 'package:shelf/shelf.dart';

Middleware injectStore(Store<AppState> store) {
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

Middleware checkAuthorization() {
  return (Handler innerHandler) {
    return (Request request) {
      final authorization = request.headers[HttpHeaders.authorizationHeader];
      final store = request.context['store'] as Store<AppState>;
      final account = store.state.accounts.entries
          .firstWhere((element) => element.value == authorization.substring('Basic '.length));
      if (account == null) {
        return Response.notFound('account not found');
      }
      return innerHandler(
        request.change(
          context: {...request.context, 'account': account},
        ),
      );
    };
  };
}
