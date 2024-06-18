import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

import '../../data/state.dart';
import '../../presentation/layout.dart';
import 'action.dart' as redux_actions;
import 'store.dart';

class ReduxScreen extends StatelessWidget {
  const ReduxScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return StoreProvider<ShapeState>(
      /// Use some DI to get/create manager here
      store: store,
      child: StoreConnector<ShapeState, ShapeState>(
        converter: (store) => store.state,
        builder: (context, state) {
          return Layout(
            onReset: () => store.dispatch(
              redux_actions.Actions.reset,
            ),
            onChangeColor: () => store.dispatch(
              redux_actions.Actions.changeColor,
            ),
            onMakeCircle: () => store.dispatch(
              redux_actions.Actions.makeCircle,
            ),
            onMakeSquare: () => store.dispatch(
              redux_actions.Actions.makeSquare,
            ),
            color: switch (state) {
              EmptyShapeState() => null,
              SquareShapeState(:final color) => color,
              CircleShapeState(:final color) => color,
            },
            isSquare: state.isSquare,
            isCircle: state.isCircle,
          );
        },
      ),
    );
  }
}
