import 'dart:convert';
import 'dart:io';
import 'package:args/command_runner.dart';
import 'package:pedantic/pedantic.dart';
import 'package:web_socket_channel/io.dart';
import 'package:json_rpc_2/json_rpc_2.dart';

class ListenCommand extends Command {
  ListenCommand() {
    argParser..addOption('username')..addOption('password');
  }

  @override
  String get description => 'Listen for incoming message';

  @override
  String get name => 'listen';

  @override
  Future<void> run() async {
    final username = argResults['username'];
    final password = argResults['password'];

    final basic = base64.encode(utf8.encode('$username:$password'));

    final socket = IOWebSocketChannel.connect(
      Uri.parse('ws://localhost:8080/api_v1/realtime/ws'),
      headers: {
        HttpHeaders.authorizationHeader: 'Basic $basic',
      },
    );

    final peer = Peer(socket.cast<String>());
    unawaited(peer.listen());

    peer.registerMethod('onMessage', (Parameters parameters) {
      print('${parameters.asMap['sender']}: ${parameters.asMap['msg']}');
    });

    ProcessSignal.sigint.watch().listen((event) async {
      await peer.close();
      exit(0);
    });
  }
}
