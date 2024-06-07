import 'package:mobx/mobx.dart';

import '../../data/state.dart';
import '../../utils/color.dart';

part 'observer.g.dart';

class MobxShapeChanger = MobxShapeChangerBase with _$MobxShapeChanger;

abstract class MobxShapeChangerBase with Store {
  @observable
  ShapeState value = const ShapeState.empty();

  @action
  void reset() {
    if (value.isEmpty) {
      throw Exception('Cannot reset from state $value');
    }
    value = const ShapeState.empty();
  }

  @action
  void makeCircle() {
    if (value.isEmpty) {
      value = ShapeState.circle(
        color: ColorUtils.makeRandomColor(),
      );
    } else {
      throw Exception('Cannot makeCircle from state $value');
    }
  }

  @action
  void makeSquare() {
    if (value.isEmpty) {
      value = ShapeState.square(
        color: ColorUtils.makeRandomColor(),
      );
    } else {
      throw Exception('Cannot makeSquare from state $value');
    }
  }

  @action
  void changeColor() {
    if (value.isEmpty) {
      throw Exception('Cannot changeColor from state $value');
    }
    if (value.isCircle) {
      value = ShapeState.circle(
        color: ColorUtils.makeRandomColor(),
      );
      return;
    }
    if (value.isSquare) {
      value = ShapeState.square(
        color: ColorUtils.makeRandomColor(),
      );
      return;
    }
  }
}
