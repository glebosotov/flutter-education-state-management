import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/state.dart';
import '../../presentation/layout.dart';
import 'cubit.dart';

class BlocCubitScreen extends StatefulWidget {
  const BlocCubitScreen({super.key});

  @override
  State<BlocCubitScreen> createState() => _BlocCubitScreenState();
}

class _BlocCubitScreenState extends State<BlocCubitScreen> {
  /// Use some DI to get/create manager here
  final cubit = ShapeCubit();
  @override
  Widget build(BuildContext context) => BlocBuilder<ShapeCubit, ShapeState>(
        bloc: cubit,
        builder: (context, state) => Layout(
          onReset: cubit.reset,
          onChangeColor: cubit.changeColor,
          onMakeCircle: cubit.makeCircle,
          onMakeSquare: cubit.makeSquare,
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
