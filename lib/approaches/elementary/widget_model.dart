import 'dart:developer';

import 'package:elementary/elementary.dart';
import 'package:elementary_helper/elementary_helper.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart' show BuildContext;

import '../../data/state.dart';
import 'model.dart';
import 'widget.dart';

class ToyErrorHandler implements ErrorHandler {
  @override
  void handleError(Object error, {StackTrace? stackTrace}) {
    log('$error');
  }
}

LayoutWidgetModel widgetModelFactory(BuildContext context) {
  final errorHandler = ToyErrorHandler();
  return LayoutWidgetModel(ElementaryShapeModel(errorHandler));
}

class LayoutWidgetModel
    extends WidgetModel<ElementaryShapeWidget, ElementaryShapeModel>
    implements ILayoutWidgetModel {
  LayoutWidgetModel(super._model);
  late EntityStateNotifier<ShapeState> _valueController;

  @override
  ValueListenable<EntityState<ShapeState>> get valueState => _valueController;

  @override
  void initWidgetModel() {
    super.initWidgetModel();

    _valueController = EntityStateNotifier<ShapeState>.value(model.shape);
  }

  @override
  void dispose() {
    _valueController.dispose();

    super.dispose();
  }

  @override
  void changeColor() {
    model.changeColor();
    _valueController.content(model.shape);
  }

  @override
  void makeCircle() {
    model.makeCircle();
    _valueController.content(model.shape);
  }

  @override
  void makeSquare() {
    model.makeSquare();
    _valueController.content(model.shape);
  }

  @override
  void reset() {
    model.reset();
    _valueController.content(model.shape);
  }
}

abstract interface class ILayoutWidgetModel implements IWidgetModel {
  ValueListenable<EntityState<ShapeState>> get valueState;
  void reset();
  void makeCircle();
  void makeSquare();
  void changeColor();
}
