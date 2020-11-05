import 'package:server/src/redux/reducers/accounts.dart';
import 'package:server/src/redux/reducers/peers.dart';
import 'package:server/src/redux/state/realtime/realtime.dart';

RealtimeState realtimeReducer(RealtimeState state, action) => state.copyWith(
      peers: peersReducer(state.peers, action),
      accounts: accountsReducer(state.accounts, action),
    );
