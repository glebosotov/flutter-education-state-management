import '../../data/state.dart';
import '../../utils/color.dart';
import 'action.dart';

ShapeState shapeReducer(ShapeState state, dynamic action) {
  return switch (action) {
    Actions.reset => reset(state),
    Actions.changeColor => changeColor(state),
    Actions.makeCircle => makeCircle(state),
    Actions.makeSquare => makeSquare(state),
    _ => state,
  };
}

ShapeState reset(ShapeState state) {
  if (state.isEmpty) {
    throw Exception('Cannot reset from state $state');
  }
  const newState = ShapeState.empty();
  return newState;
}

ShapeState makeCircle(ShapeState state) {
  if (state.isEmpty) {
    final newState = ShapeState.circle(
      color: ColorUtils.makeRandomColor(),
    );
    return newState;
  } else {
    throw Exception('Cannot makeCircle from state $state');
  }
}

ShapeState makeSquare(ShapeState state) {
  if (state.isEmpty) {
    final newState = ShapeState.square(
      color: ColorUtils.makeRandomColor(),
    );
    return newState;
  } else {
    throw Exception('Cannot makeSquare from state $state');
  }
}

ShapeState changeColor(ShapeState state) {
  if (state.isEmpty) {
    throw Exception('Cannot changeColor from state $state');
  }
  if (state.isCircle) {
    final newState = ShapeState.circle(
      color: ColorUtils.makeRandomColor(),
    );
    return newState;
  }
  if (state.isSquare) {
    final newState = ShapeState.square(
      color: ColorUtils.makeRandomColor(),
    );
    return newState;
  }
  return state;
}
