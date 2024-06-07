import 'package:riverpod/riverpod.dart';
import 'package:state_management/data/state.dart';

import '../../utils/color.dart';

class ShapeRiverpodProvider extends StateNotifier<ShapeState> {
  ShapeRiverpodProvider() : super(const ShapeState.empty());

  void reset() {
    if (state.isEmpty) {
      throw Exception('Cannot reset from state $state');
    }
    state = const ShapeState.empty();
  }

  void makeCircle() {
    if (state.isEmpty) {
      state = ShapeState.circle(
        color: ColorUtils.makeRandomColor(),
      );
    } else {
      throw Exception('Cannot makeCircle from state $state');
    }
  }

  void makeSquare() {
    if (state.isEmpty) {
      state = ShapeState.square(
        color: ColorUtils.makeRandomColor(),
      );
    } else {
      throw Exception('Cannot makeSquare from state $state');
    }
  }

  void changeColor() {
    if (state.isEmpty) {
      throw Exception('Cannot changeColor from state $state');
    }
    if (state.isCircle) {
      state = ShapeState.circle(
        color: ColorUtils.makeRandomColor(),
      );
      return;
    }
    if (state.isSquare) {
      state = ShapeState.square(
        color: ColorUtils.makeRandomColor(),
      );
      return;
    }
  }
}
