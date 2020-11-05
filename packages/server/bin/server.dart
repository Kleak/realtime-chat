import 'package:server/server.dart';
import 'package:shelf/shelf_io.dart' as io;

void main() {
  final realtime = Realtime();

  io.serve(realtime.router.handler, 'localhost', 8080).then((server) {
    print('Serving at http://${server.address.host}:${server.port}');
  });
}
