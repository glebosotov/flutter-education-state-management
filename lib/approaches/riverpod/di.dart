import 'package:riverpod/riverpod.dart';

import '../../data/state.dart';
import 'manager.dart';

final riverpodShapeProvider =
    StateNotifierProvider<ShapeRiverpodProvider, ShapeState>(
  (ref) => ShapeRiverpodProvider(),
);
