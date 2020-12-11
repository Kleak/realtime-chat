import 'package:server/src/api_v1/redux/reducers/accounts.dart';
import 'package:server/src/api_v1/redux/reducers/realtime/reducer.dart';
import 'package:server/src/api_v1/redux/state/app_state.dart';

AppState appReducer(AppState state, action) => state.copyWith(
      realtime: realtimeReducer(state.realtime, action),
      accounts: accountsReducer(state.accounts, action),
    );
