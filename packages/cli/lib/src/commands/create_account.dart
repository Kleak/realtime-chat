import 'dart:convert';
import 'dart:io';
import 'package:args/command_runner.dart';
import 'package:http/http.dart' as http;

class CreateAccountCommand extends Command {
  CreateAccountCommand() {
    argParser..addOption('username')..addOption('password');
  }

  @override
  String get description => 'Create an account';

  @override
  String get name => 'create-account';

  @override
  Future<void> run() async {
    final username = argResults['username'];
    final password = argResults['password'];

    final basic = base64.encode(utf8.encode('$username:$password'));

    final response = await http.post(
      'http://localhost:8080/account',
      body: json.encode(
        {
          'username': username,
          'basic': basic,
        },
      ),
      headers: {
        HttpHeaders.contentTypeHeader: ContentType.json.toString(),
      },
    );
    print(response.statusCode);
    if (response.statusCode != HttpStatus.ok) {
      print(response.body);
    }
  }
}
