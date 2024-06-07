import 'package:elementary/elementary.dart';
import 'package:elementary_helper/elementary_helper.dart';
import 'package:flutter/material.dart';

import '../../data/state.dart';
import '../../presentation/layout.dart';
import 'widget_model.dart';

class ElementaryShapeWidget extends ElementaryWidget<ILayoutWidgetModel> {
  const ElementaryShapeWidget({
    WidgetModelFactory wm = widgetModelFactory,
    Key? key,
  }) : super(wm, key: key);

  @override
  Widget build(ILayoutWidgetModel wm) {
    return EntityStateNotifierBuilder<ShapeState>(
      listenableEntityState: wm.valueState,
      builder: (context, state) => Layout(
        onReset: () => wm.reset(),
        onChangeColor: () => wm.changeColor(),
        onMakeCircle: () => wm.makeCircle(),
        onMakeSquare: () => wm.makeSquare(),
        color: switch (state) {
          EmptyShapeState() => null,
          SquareShapeState(:final color) => color,
          CircleShapeState(:final color) => color,
          _ => null,
        },
        isSquare: state?.isSquare ?? false,
        isCircle: state?.isCircle ?? false,
      ),
    );
  }
}
