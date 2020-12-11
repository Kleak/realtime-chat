// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'realtime.dart';

// **************************************************************************
// ShelfRouterGenerator
// **************************************************************************

Router _$RealtimeRouter(Realtime service) {
  final router = Router();
  router.add('GET', r'/ws', service.websocket);
  return router;
}
