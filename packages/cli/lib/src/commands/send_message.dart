import 'dart:convert';
import 'dart:io';
import 'package:args/command_runner.dart';
import 'package:json_rpc_2/json_rpc_2.dart';
import 'package:pedantic/pedantic.dart';
import 'package:web_socket_channel/io.dart';

class SendMessageCommand extends Command {
  SendMessageCommand() {
    argParser..addOption('username')..addOption('password')..addOption('message');
  }

  @override
  String get description => 'Send a message';

  @override
  String get name => 'send';

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
    peer.registerMethod('onMethod', () => null);
    unawaited(peer.listen());

    await peer.sendRequest('onMessage', {'msg': argResults['message']});
    await peer.close();
  }
}
