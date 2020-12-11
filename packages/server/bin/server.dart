import 'package:server/server.dart';
import 'package:shelf/shelf_io.dart' as io;

void main() {
  final server = Server();

  io.serve(server.router.handler, 'localhost', 8080).then((server) {
    print('Serving at http://${server.address.host}:${server.port}');
  });
}
