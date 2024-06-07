import 'package:flutter/material.dart' show Color;
import 'package:freezed_annotation/freezed_annotation.dart';

part 'state.freezed.dart';

@freezed
sealed class ShapeState with _$ShapeState {
  const factory ShapeState.empty() = EmptyShapeState;
  const factory ShapeState.circle({
    required Color color,
  }) = CircleShapeState;
  const factory ShapeState.square({
    required Color color,
  }) = SquareShapeState;

  const ShapeState._();

  bool get isEmpty => switch (this) {
        EmptyShapeState() => true,
        _ => false,
      };

  bool get isCircle => switch (this) {
        CircleShapeState() => true,
        _ => false,
      };

  bool get isSquare => switch (this) {
        SquareShapeState() => true,
        _ => false,
      };
}
