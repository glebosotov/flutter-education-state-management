import 'dart:math' as math;

import 'package:flutter/material.dart' show Color;

abstract class ColorUtils {
  static Color makeRandomColor() => Color(
        (math.Random().nextDouble() * 0xFFFFFF).toInt(),
      ).withOpacity(
        1,
      );
}
