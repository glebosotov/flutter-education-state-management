import 'dart:developer';

import 'package:bloc/bloc.dart';

import '/approaches/bloc/bloc_event.dart';
import '/data/state.dart';
import '../../utils/color.dart';

class ShapeBloc extends Bloc<ShapeEvent, ShapeState> {
  ShapeBloc() : super(const ShapeState.empty()) {
    on<ShapeEvent>(_handleEvent);
  }

  void _handleEvent(
    ShapeEvent event,
    Emitter<ShapeState> emit,
  ) =>
      switch (event) {
        ResetShapeEvent() => _handleResetEvent(event, emit),
        CircleShapeEvent() => _handleCircleEvent(event, emit),
        SquareShapeEvent() => _handleSquareEvent(event, emit),
        ChangeColorShapeEvent() => _handleChangeColorEvent(event, emit),
      };

  void _handleResetEvent(
    ShapeEvent event,
    Emitter<ShapeState> emit,
  ) {
    if (state.isEmpty) {
      addError(Exception('Cannot reset from state $state'));
      return;
    }
    emit(const ShapeState.empty());
  }

  void _handleCircleEvent(
    ShapeEvent event,
    Emitter<ShapeState> emit,
  ) {
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

  void _handleSquareEvent(
    ShapeEvent event,
    Emitter<ShapeState> emit,
  ) {
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

  void _handleChangeColorEvent(
    ShapeEvent event,
    Emitter<ShapeState> emit,
  ) {
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

  @override
  void onError(Object error, StackTrace stackTrace) {
    log('$error $stackTrace');
    super.onError(error, stackTrace);
  }
}
