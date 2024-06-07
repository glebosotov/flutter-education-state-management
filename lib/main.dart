import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'approaches/approaches_enum.dart';
import 'approaches/bloc/builder.dart';
import 'approaches/elementary/widget.dart';
import 'approaches/get/builder.dart';
import 'approaches/mobx/builder.dart';
import 'approaches/provider/builder.dart';
import 'approaches/redux/view.dart';
import 'approaches/riverpod/builder.dart';
import 'approaches/set_state/builder.dart';

void main() {
  runApp(
    const ProviderScope(
      child: _App(),
    ),
  );
}

class _App extends StatelessWidget {
  const _App();

  @override
  Widget build(BuildContext context) {
    final theme = ThemeData(
      colorScheme: ColorScheme.fromSeed(
        seedColor: Colors.teal,
      ),
    );

    return MaterialApp(
      theme: theme,
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _controller = PageController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            LimitedBox(
              maxHeight: 50,
              child: ListView.separated(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                scrollDirection: Axis.horizontal,
                separatorBuilder: (_, __) => const SizedBox(
                  width: 4,
                ),
                itemBuilder: (context, index) => ChoiceChip(
                  label: Text(Approaches.values[index].name),
                  selected: _controller.page == index,
                  onSelected: (value) => setState(
                    () => _controller.jumpToPage(index),
                  ),
                ),
                itemCount: Approaches.values.length,
              ),
            ),
            Expanded(
              child: PageView.builder(
                physics: const NeverScrollableScrollPhysics(),
                controller: _controller,
                itemBuilder: (context, index) {
                  final approach = Approaches.values[index];
                  return switch (approach) {
                    Approaches.bloc => const BlocScreen(),
                    Approaches.elementary => const ElementaryShapeWidget(),
                    Approaches.getx => const GetxScreen(),
                    Approaches.mobx => const MobxScreen(),
                    Approaches.provider => const ChangeNotifierScreen(),
                    Approaches.redux => const ReduxScreen(),
                    Approaches.riverpod => const RiverpodScreen(),
                    Approaches.setState => const FlutterSetStateScreen(),
                  };
                },
                itemCount: Approaches.values.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
