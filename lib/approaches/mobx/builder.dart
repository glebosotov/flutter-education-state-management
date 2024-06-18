import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import '../../data/state.dart';
import '../../presentation/layout.dart';
import 'observer.dart';

class MobxScreen extends StatefulWidget {
  const MobxScreen({super.key});

  @override
  State<MobxScreen> createState() => _MobxScreenState();
}

class _MobxScreenState extends State<MobxScreen> {
  /// Use some DI to get/create manager here
  final _manager = MobxShapeChanger();
  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (context) {
        final state = _manager.value;
        return Layout(
          onReset: _manager.reset,
          onChangeColor: _manager.changeColor,
          onMakeCircle: _manager.makeCircle,
          onMakeSquare: _manager.makeSquare,
          color: switch (state) {
            EmptyShapeState() => null,
            SquareShapeState(:final color) => color,
            CircleShapeState(:final color) => color,
          },
          isSquare: state.isSquare,
          isCircle: state.isCircle,
        );
      },
    );
  }
}
