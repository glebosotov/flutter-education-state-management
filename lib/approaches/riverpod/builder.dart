import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../data/state.dart';
import '../../presentation/layout.dart';
import 'di.dart';

class RiverpodScreen extends ConsumerWidget {
  const RiverpodScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(riverpodShapeProvider);
    final provider = ref.read(riverpodShapeProvider.notifier);

    return Layout(
      onReset: provider.reset,
      onChangeColor: provider.changeColor,
      onMakeCircle: provider.makeCircle,
      onMakeSquare: provider.makeSquare,
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
