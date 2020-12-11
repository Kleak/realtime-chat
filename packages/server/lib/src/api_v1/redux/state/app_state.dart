import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:server/src/api_v1/redux/services/app_services.dart';
import 'package:server/src/api_v1/redux/state/realtime/realtime_state.dart';

part 'app_state.freezed.dart';

@freezed
abstract class AppState with _$AppState {
  const factory AppState({
    @Default(RealtimeState()) RealtimeState realtime,
    @Default({}) Map<String, String> accounts,
    @Default(AppServices()) AppServices services,
  }) = _AppState;
}

@freezed
abstract class LastUpdated with _$LastUpdated {
  const factory LastUpdated(DateTime lastUpdated) = _LastUpdated;
  const factory LastUpdated.never() = NeverUpdated;
}

LastUpdated lastUpdatedFactory({DateTime lastUpdated}) {
  lastUpdated = DateTime.now().subtract(Duration(seconds: 30));
  return LastUpdated(lastUpdated);
}
