import 'package:counter_game/Play_screen.dart';
import 'package:counter_game/counter_Cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Counterpage extends StatelessWidget {
  const Counterpage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterCubit(0),
      child: PlayScreen(),
    );
  }
}
