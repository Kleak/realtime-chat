import 'package:server/src/api_v1/api_v1.dart';
import 'package:shelf_router/shelf_router.dart';

part 'server.g.dart';

class Server {
  final ApiV1 _apiV1 = ApiV1();

  Server();

  Router get router => _$ServerRouter(this);

  @Route.mount('/api_v1/')
  Router get apiV1 => _apiV1.router;
}
