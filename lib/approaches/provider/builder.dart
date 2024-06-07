import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../data/state.dart';
import '../../presentation/layout.dart';
import 'change_notifier.dart';

class ChangeNotifierScreen extends StatelessWidget {
  const ChangeNotifierScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ShapeRiverpodProvider(),
      builder: (context, _) => Consumer<ShapeRiverpodProvider>(
        builder: (context, value, child) {
          final state = value.state;

          return Layout(
            onReset: () => value.reset(),
            onChangeColor: () => value.changeColor(),
            onMakeCircle: () => value.makeCircle(),
            onMakeSquare: () => value.makeSquare(),
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
