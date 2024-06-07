import 'package:elementary/elementary.dart';

import '../../data/state.dart';
import '../../utils/color.dart';

class ElementaryShapeModel extends ElementaryModel {
  ElementaryShapeModel(
    ErrorHandler errorHandler,
  ) : super(errorHandler: errorHandler);

  ShapeState get shape => _shape;
  var _shape = const ShapeState.empty();

  void reset() {
    if (_shape.isEmpty) {
      handleError(Exception('Cannot reset from state $_shape'));
    }
    _shape = const ShapeState.empty();
  }

  void makeCircle() {
    if (_shape.isEmpty) {
      _shape = ShapeState.circle(
        color: ColorUtils.makeRandomColor(),
      );
    } else {
      handleError(Exception('Cannot makeCircle from state $_shape'));
    }
  }

  void makeSquare() {
    if (_shape.isEmpty) {
      _shape = ShapeState.square(
        color: ColorUtils.makeRandomColor(),
      );
    } else {
      handleError(Exception('Cannot makeSquare from state $_shape'));
    }
  }

  void changeColor() {
    if (_shape.isEmpty) {
      handleError(Exception('Cannot changeColor from state $_shape'));
    }
    if (_shape.isCircle) {
      _shape = ShapeState.circle(
        color: ColorUtils.makeRandomColor(),
      );
      return;
    }
    if (_shape.isSquare) {
      _shape = ShapeState.square(
        color: ColorUtils.makeRandomColor(),
      );
      return;
    }
  }
}
