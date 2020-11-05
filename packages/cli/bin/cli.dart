import 'package:args/command_runner.dart';
import 'package:cli/cli.dart';
import 'package:pedantic/pedantic.dart';

void main(List<String> arguments) async {
  final commandRunner = CommandRunner('realtime-chat', 'Realtime chat cli')
    ..addCommand(CreateAccountCommand())
    ..addCommand(SendMessageCommand())
    ..addCommand(ListenCommand());

  unawaited(commandRunner.run(arguments));
}
