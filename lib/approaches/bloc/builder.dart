import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/state.dart';
import '../../presentation/layout.dart';
import 'cubit.dart';

class BlocScreen extends StatefulWidget {
  const BlocScreen({super.key});

  @override
  State<BlocScreen> createState() => _BlocScreenState();
}

class _BlocScreenState extends State<BlocScreen> {
  /// Use some DI to get/create manager here
  final bloc = ShapeCubit();
  @override
  Widget build(BuildContext context) => BlocBuilder<ShapeCubit, ShapeState>(
        bloc: bloc,
        builder: (context, state) => Layout(
          onReset: bloc.reset,
          onChangeColor: bloc.changeColor,
          onMakeCircle: bloc.makeCircle,
          onMakeSquare: bloc.makeSquare,
          color: switch (state) {
            EmptyShapeState() => null,
            SquareShapeState(:final color) => color,
            CircleShapeState(:final color) => color,
          },
          isSquare: state.isSquare,
          isCircle: state.isCircle,
        ),
      );
}
