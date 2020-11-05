import 'package:redux_thunk/redux_thunk.dart';
import 'package:server/src/redux/actions/add_account.dart';
import 'package:server/src/redux/state/realtime/realtime.dart';

ThunkAction<RealtimeState> createAccount(String username, String auth) {
  return (store) {
    store.dispatch(AddAccountAction(MapEntry(username, auth)));
  };
}
