import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '/approaches/bloc/bloc.dart';
import '/approaches/bloc/bloc_event.dart';
import '../../data/state.dart';
import '../../presentation/layout.dart';

class BlocScreen extends StatefulWidget {
  const BlocScreen({super.key});

  @override
  State<BlocScreen> createState() => _BlocScreenState();
}

class _BlocScreenState extends State<BlocScreen> {
  /// Use some DI to get/create manager here
  final bloc = ShapeBloc();
  @override
  Widget build(BuildContext context) => BlocBuilder<ShapeBloc, ShapeState>(
        bloc: bloc,
        builder: (context, state) => Layout(
          onReset: () => bloc.add(ResetShapeEvent()),
          onChangeColor: () => bloc.add(ChangeColorShapeEvent()),
          onMakeCircle: () => bloc.add(CircleShapeEvent()),
          onMakeSquare: () => bloc.add(SquareShapeEvent()),
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
