import 'dart:developer';

import 'package:redux/redux.dart';

import '../../data/state.dart';

void loggingMiddleware(
  Store<ShapeState> store,
  dynamic action,
  NextDispatcher next,
) {
  log('${DateTime.now()}: $action');

  next(action);
}
