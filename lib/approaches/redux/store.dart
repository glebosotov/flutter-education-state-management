import 'package:redux/redux.dart';

import '../../data/state.dart';
import 'middleware.dart';
import 'reducer.dart';

final store = Store<ShapeState>(
  shapeReducer,
  initialState: const ShapeState.empty(),
  middleware: [loggingMiddleware],
);
