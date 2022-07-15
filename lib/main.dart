import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:random_number_generator/randomizer_state_notifier.dart';
import 'package:random_number_generator/range_selector_page.dart';

void main() {
  runApp(const MyApp());
}

final randomizerProvider =
    StateNotifierProvider<RandomizerStateNotifier, RandomizerState>(
        (ref) => RandomizerStateNotifier());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return ProviderScope(
      child: MaterialApp(
        title: 'Randomizer',
        home: RangeSelectorPage(),
      ),
    );
  }
}
