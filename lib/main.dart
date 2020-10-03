import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:redux_logging/redux_logging.dart';

import 'color_box.dart';
import 'color_controller.dart';
import 'models/app_state.dart';
import 'models/box_color.dart';
import 'reducers/app_reducer.dart';

void main() {
  final initialState = AppState(
    boxColor: MyBoxColor(
      red: 5.0,
      green: 5.0,
      blue: 5.0,
    ),
  );

  final store = Store<AppState>(
    appReducer,
    initialState: initialState,
    middleware: [new LoggingMiddleware.printer()],
  );

  print('Initial state: ${store.state}');

  runApp(StoreProvider(store: store, child: MyApp()));
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Redux Demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Redux Demo'),
        ),
        body: Padding(
          padding: EdgeInsets.all(20),
          child: ListView(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(top: 10),
                child: Column(
                  children: <Widget>[
                    Text('Color Controller'),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.only(right: 20),
                            child: ColorController(),
                          ),
                        ),
                        ColorBox(),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}