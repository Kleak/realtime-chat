import 'package:redux/redux.dart';
import 'package:server/src/redux/actions/add_account.dart';

Reducer<Map<String, String>> accountsReducer = combineReducers<Map<String, String>>([
  TypedReducer(addAccount),
]);

Map<String, String> addAccount(Map<String, String> state, AddAccountAction action) => {
      ...state,
      ...{action.entry.key: action.entry.value},
    };
