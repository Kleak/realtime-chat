import 'package:redux_thunk/redux_thunk.dart';
import 'package:server/src/api_v1/redux/actions/add_account.dart';
import 'package:server/src/api_v1/redux/state/app_state.dart';

ThunkAction<AppState> createAccountThunk(String username, String auth) {
  return (store) async {
    store.dispatch(AddAccountAction(MapEntry(username, auth)));
  };
}
