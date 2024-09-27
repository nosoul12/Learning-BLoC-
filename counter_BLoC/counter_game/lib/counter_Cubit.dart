import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<int> {
  CounterCubit(int initialState) : super(initialState); // Fix the typo here
  void increment() => emit(state + 1); // Fix the method name
  void decrement() => emit(state - 1); // Fix the method name
}
