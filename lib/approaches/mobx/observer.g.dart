// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'observer.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$MobxShapeChanger on MobxShapeChangerBase, Store {
  late final _$valueAtom =
      Atom(name: 'MobxShapeChangerBase.value', context: context);

  @override
  ShapeState get value {
    _$valueAtom.reportRead();
    return super.value;
  }

  @override
  set value(ShapeState value) {
    _$valueAtom.reportWrite(value, super.value, () {
      super.value = value;
    });
  }

  late final _$MobxShapeChangerBaseActionController =
      ActionController(name: 'MobxShapeChangerBase', context: context);

  @override
  void reset() {
    final _$actionInfo = _$MobxShapeChangerBaseActionController.startAction(
        name: 'MobxShapeChangerBase.reset');
    try {
      return super.reset();
    } finally {
      _$MobxShapeChangerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void makeCircle() {
    final _$actionInfo = _$MobxShapeChangerBaseActionController.startAction(
        name: 'MobxShapeChangerBase.makeCircle');
    try {
      return super.makeCircle();
    } finally {
      _$MobxShapeChangerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void makeSquare() {
    final _$actionInfo = _$MobxShapeChangerBaseActionController.startAction(
        name: 'MobxShapeChangerBase.makeSquare');
    try {
      return super.makeSquare();
    } finally {
      _$MobxShapeChangerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeColor() {
    final _$actionInfo = _$MobxShapeChangerBaseActionController.startAction(
        name: 'MobxShapeChangerBase.changeColor');
    try {
      return super.changeColor();
    } finally {
      _$MobxShapeChangerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
value: ${value}
    ''';
  }
}
