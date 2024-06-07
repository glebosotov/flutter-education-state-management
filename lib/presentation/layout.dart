import 'package:flutter/material.dart';

class Layout extends StatelessWidget {
  const Layout({
    required this.onReset,
    required this.onChangeColor,
    required this.onMakeCircle,
    required this.onMakeSquare,
    required this.color,
    required this.isSquare,
    required this.isCircle,
    super.key,
  }) : assert(
          !(isSquare && isCircle),
          'can not be multiple shapes at once',
        );

  final VoidCallback onReset;
  final VoidCallback onChangeColor;
  final VoidCallback onMakeCircle;
  final VoidCallback onMakeSquare;
  final Color? color;
  final bool isSquare;
  final bool isCircle;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context).height * 0.3;
    return Scaffold(
      persistentFooterButtons: [
        TextButton.icon(
          onPressed: onChangeColor,
          icon: const Icon(Icons.palette),
          label: const Text('Change color'),
        ),
        TextButton.icon(
          onPressed: onMakeCircle,
          icon: const Icon(Icons.circle),
          label: const Text('Circle'),
        ),
        TextButton.icon(
          onPressed: onMakeSquare,
          icon: const Icon(Icons.square),
          label: const Text('Square'),
        ),
        TextButton.icon(
          onPressed: onReset,
          icon: const Icon(Icons.arrow_back_ios),
          label: const Text('Reset'),
        ),
      ],
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          if (isCircle || isSquare)
            Center(
              child: AnimatedContainer(
                duration: const Duration(seconds: 1),
                curve: Curves.easeInOut,
                height: size,
                width: size,
                decoration: BoxDecoration(
                  shape: isCircle ? BoxShape.circle : BoxShape.rectangle,
                  color: color,
                ),
              ),
            )
          else
            SizedBox(height: size),
        ],
      ),
    );
  }
}
