// lib/color_box.dart
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:sample_flutter_redux_app/selectors/color_selector.dart';

import 'models/app_state.dart';

class ColorBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, Color>(
      converter: (Store<AppState> store) => colorSelector(store.state.boxColor),
      builder: (BuildContext context, Color color) {
        return Container(
          width: 100,
          height: 100,
          child: Center(
            child: Container(
              width: 100,
              height: 100,
              color: color,
            ),
          ),
        );
      },
    );
  }
}