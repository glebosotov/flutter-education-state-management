import 'package:bloc/bloc.dart';

import '../../data/state.dart';
import '../../utils/color.dart';

class ShapeCubit extends Cubit<ShapeState> {
  ShapeCubit() : super(const ShapeState.empty());

  void reset() {
    if (state.isEmpty) {
      addError(Exception('Cannot reset from state $state'));
      return;
    }
    emit(const ShapeState.empty());
  }

  void makeCircle() {
    if (state.isEmpty) {
      emit(
        ShapeState.circle(
          color: ColorUtils.makeRandomColor(),
        ),
      );
    } else {
      addError(Exception('Cannot makeCircle from state $state'));
      return;
    }
  }

  void makeSquare() {
    if (state.isEmpty) {
      emit(
        ShapeState.square(
          color: ColorUtils.makeRandomColor(),
        ),
      );
    } else {
      addError(Exception('Cannot makeSquare from state $state'));
      return;
    }
  }

  void changeColor() {
    if (state.isEmpty) {
      addError(Exception('Cannot changeColor from state $state'));
      return;
    }
    if (state.isCircle) {
      emit(
        ShapeState.circle(
          color: ColorUtils.makeRandomColor(),
        ),
      );
      return;
    }
    if (state.isSquare) {
      emit(
        ShapeState.square(
          color: ColorUtils.makeRandomColor(),
        ),
      );
      return;
    }
  }
}
