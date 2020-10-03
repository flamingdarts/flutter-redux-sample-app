// lib/actions/actions.dart
import 'package:sample_flutter_redux_app/models/box_color.dart';

class TestAction {
  final bool testPayload;

  TestAction(this.testPayload);
}

class SetColor {
  final MyBoxColor boxColor;

  SetColor(this.boxColor);
}