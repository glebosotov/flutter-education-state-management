import 'package:flutter/material.dart';

import '../../data/state.dart';
import '../../presentation/layout.dart';
import '../../utils/color.dart';

class FlutterSetStateScreen extends StatefulWidget {
  const FlutterSetStateScreen({super.key});

  @override
  State<FlutterSetStateScreen> createState() => _FlutterSetStateScreenState();
}

class _FlutterSetStateScreenState extends State<FlutterSetStateScreen> {
  ShapeState state = const ShapeState.empty();

  void reset() {
    if (state.isEmpty) {
      throw Exception('Cannot reset from state $state');
    }
    setState(() {
      state = const ShapeState.empty();
    });
  }

  void makeCircle() {
    if (state.isEmpty) {
      setState(() {
        state = ShapeState.circle(
          color: ColorUtils.makeRandomColor(),
        );
      });
    } else {
      throw Exception('Cannot makeCircle from state $state');
    }
  }

  void makeSquare() {
    if (state.isEmpty) {
      setState(() {
        state = ShapeState.square(
          color: ColorUtils.makeRandomColor(),
        );
      });
    } else {
      throw Exception('Cannot makeSquare from state $state');
    }
  }

  void changeColor() {
    if (state.isEmpty) {
      throw Exception('Cannot changeColor from state $state');
    }
    if (state.isCircle) {
      setState(() {
        state = ShapeState.circle(
          color: ColorUtils.makeRandomColor(),
        );
      });
      return;
    }
    if (state.isSquare) {
      setState(() {
        state = ShapeState.square(
          color: ColorUtils.makeRandomColor(),
        );
      });
      return;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Layout(
      onReset: reset,
      onChangeColor: changeColor,
      onMakeCircle: makeCircle,
      onMakeSquare: makeSquare,
      color: switch (state) {
        EmptyShapeState() => null,
        SquareShapeState(:final color) => color,
        CircleShapeState(:final color) => color,
      },
      isSquare: state.isSquare,
      isCircle: state.isCircle,
    );
  }
}
