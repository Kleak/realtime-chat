import 'dart:convert';
import 'dart:io';

import 'package:redux/redux.dart';
import 'package:redux_thunk/redux_thunk.dart';
import 'package:server/src/api_v1/realtime/realtime.dart';
import 'package:server/src/api_v1/redux/reducers/reducers.dart';
import 'package:server/src/api_v1/redux/state/app_state.dart';
import 'package:server/src/api_v1/redux/thunks/create_account.dart';
import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';

part 'api_v1.g.dart';

class ApiV1 {
  final _store = Store<AppState>(
    appReducer,
    initialState: AppState(),
    distinct: true,
    middleware: [thunkMiddleware],
  );

  ApiV1();

  Router get router => _$ApiV1Router(this);

  @Route.mount('/realtime/')
  Router get realtime => Realtime(_store).router;

  @Route.post('/account')
  Future<Response> createAccount(Request request) async {
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
    _store.dispatch(createAccountThunk(body['username'], auth));
    return Response.ok('');
  }
}
