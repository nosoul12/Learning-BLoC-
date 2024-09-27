import 'package:counter_game/counterPage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const CounterGame());
}

class CounterGame extends StatelessWidget {
  const CounterGame({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Counterpage(),
    );
  }
}
