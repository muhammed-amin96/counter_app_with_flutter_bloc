import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterInitial());
  int counter = 0;
  void increment() {
    counter++;
    emit(CounterIncremented());
  }

  void decrement() {
    counter--;
    emit(CounterDecremented());
  }
}
