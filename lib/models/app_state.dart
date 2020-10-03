import 'dart:convert';

import 'package:meta/meta.dart';

import 'box_color.dart';

@immutable
class AppState {
  final MyBoxColor boxColor;

  const AppState({
    @required this.boxColor,
  });

  dynamic toJson() => {
    'boxColor': boxColor,
  };

  @override
  String toString() {
    return 'AppState: ${JsonEncoder.withIndent('  ').convert(this)}';
  }
}

