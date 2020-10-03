// lib/reducers/color_reducer.dart
import 'package:redux/redux.dart';
import '../actions/actions.dart';
import '../models/models.dart';

final colorReducer = TypedReducer<MyBoxColor, SetColor>(_setColorReducer);

MyBoxColor _setColorReducer(MyBoxColor state, SetColor action) {
  return action.boxColor;
}
