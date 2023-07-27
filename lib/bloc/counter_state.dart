part of 'counter_bloc.dart';

@immutable
abstract class CounterState {}

class CounterInitial extends CounterState {}

class CounterChangedState extends CounterState {
  final int counter;
  CounterChangedState({required this.counter});
}
