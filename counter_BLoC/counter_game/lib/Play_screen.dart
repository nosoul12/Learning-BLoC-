import 'package:counter_game/counter_Cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PlayScreen extends StatefulWidget {
  PlayScreen({super.key});

  @override
  State<PlayScreen> createState() => _PlayScreenState();
}

class _PlayScreenState extends State<PlayScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<CounterCubit, int>(
        builder: (context, state) {
          return Center(
            child: Text(
              state.toString(),
              style: TextStyle(fontSize: 20),
            ),
          );
        },
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 50),
            child: FloatingActionButton(
              onPressed: () => context
                  .read<CounterCubit>()
                  .increment(), // Fix the method name
              child: Text('Run'),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 50),
            child: FloatingActionButton(
              onPressed: () => context
                  .read<CounterCubit>()
                  .decrement(), // Fix the method name

              child: Text('stop'),
            ),
          ),
        ],
      ),
    );
  }
}
