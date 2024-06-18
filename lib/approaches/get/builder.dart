import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';

import '../../data/state.dart';
import '../../presentation/layout.dart';
import 'controller.dart';

class GetxScreen extends StatelessWidget {
  const GetxScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetX<GetxShapeController>(
      /// Use some DI to get/create manager here
      init: GetxShapeController(),
      builder: (GetxShapeController controller) {
        final state = controller.state.value;
        return Layout(
          onReset: () => controller.reset(),
          onChangeColor: () => controller.changeColor(),
          onMakeCircle: () => controller.makeCircle(),
          onMakeSquare: () => controller.makeSquare(),
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
