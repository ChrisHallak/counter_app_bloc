part of 'counter_bloc.dart';

@immutable
abstract class CounterEvent {}

class IncreamentCounterEvent extends CounterEvent {}

class DecreamentCounterEvent extends CounterEvent {}

class ResertCounterEvent extends CounterEvent {}
