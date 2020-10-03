// lib/reducers/app_reducer.dart
import '../models/app_state.dart';
import 'test_reducer.dart';

AppState appReducer(AppState state, action) {
  return AppState(
    reduxSetup: testReducer(state.reduxSetup, action),
  );
}