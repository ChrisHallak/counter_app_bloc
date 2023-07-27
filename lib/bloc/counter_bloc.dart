import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  int counter = 0;
  static CounterBloc getObject(context) => BlocProvider.of(context);
  CounterBloc() : super(CounterInitial()) {
    on<CounterEvent>((event, emit) {
      if (event is IncreamentCounterEvent) {
        counter = counter + 1;
        print('here in the increament function in bloc ');
        emit(CounterChangedState(counter: counter));
      } else if (event is DecreamentCounterEvent) {
        counter = counter - 1;
        print('here in the decreament function in bloc ');

        emit(CounterChangedState(counter: counter));
      } else {
        counter = 0;
        emit(CounterChangedState(counter: counter));
      }
    });
  }
}
