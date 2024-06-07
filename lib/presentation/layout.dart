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
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        const Spacer(),
        if (isCircle || isSquare)
          AnimatedContainer(
            duration: const Duration(seconds: 1),
            curve: Curves.easeInOut,
            height: 200,
            width: 200,
            decoration: BoxDecoration(
              shape: isCircle ? BoxShape.circle : BoxShape.rectangle,
              color: color,
            ),
          )
        else
          const SizedBox(height: 200),
        const Spacer(),
        SizedBox(
          height: 100,
          child: GridView.count(
            crossAxisCount: 2,
            childAspectRatio: 4,
            children: [
              Center(
                child: OutlinedButton.icon(
                  onPressed: onChangeColor,
                  icon: const Icon(Icons.palette),
                  label: const Text('Change color'),
                ),
              ),
              Center(
                child: OutlinedButton.icon(
                  onPressed: onMakeCircle,
                  icon: const Icon(Icons.circle),
                  label: const Text('Circle'),
                ),
              ),
              Center(
                child: OutlinedButton.icon(
                  onPressed: onMakeSquare,
                  icon: const Icon(Icons.square),
                  label: const Text('Square'),
                ),
              ),
              Center(
                child: OutlinedButton.icon(
                  onPressed: onReset,
                  icon: const Icon(Icons.arrow_back_ios),
                  label: const Text('Reset'),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 8,
        ),
      ],
    );
  }
}
