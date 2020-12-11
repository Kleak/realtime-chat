// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_v1.dart';

// **************************************************************************
// ShelfRouterGenerator
// **************************************************************************

Router _$ApiV1Router(ApiV1 service) {
  final router = Router();
  router.mount(r'/realtime/', service.realtime);
  router.add('POST', r'/account', service.createAccount);
  return router;
}
