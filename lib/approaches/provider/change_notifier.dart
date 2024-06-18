import 'package:flutter/material.dart';

import '../../data/state.dart';
import '../../utils/color.dart';

class ShapeChangeNotifier extends ChangeNotifier {
  ShapeState _state = const ShapeState.empty();
  ShapeState get state => _state;

  void reset() {
    if (_state.isEmpty) {
      throw Exception('Cannot reset from state $_state');
    }
    _state = const ShapeState.empty();
    notifyListeners();
  }

  void makeCircle() {
    if (_state.isEmpty) {
      _state = ShapeState.circle(
        color: ColorUtils.makeRandomColor(),
      );
      notifyListeners();
    } else {
      throw Exception('Cannot makeCircle from state $_state');
    }
  }

  void makeSquare() {
    if (_state.isEmpty) {
      _state = ShapeState.square(
        color: ColorUtils.makeRandomColor(),
      );
      notifyListeners();
    } else {
      throw Exception('Cannot makeSquare from state $_state');
    }
  }

  void changeColor() {
    if (_state.isEmpty) {
      throw Exception('Cannot changeColor from state $_state');
    }
    if (_state.isCircle) {
      _state = ShapeState.circle(
        color: ColorUtils.makeRandomColor(),
      );
      notifyListeners();
      return;
    }
    if (_state.isSquare) {
      _state = ShapeState.square(
        color: ColorUtils.makeRandomColor(),
      );
      notifyListeners();
      return;
    }
  }
}
