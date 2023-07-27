import 'package:counter_app_with_bloc/bloc/counter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyFloatingActionButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        IconButton(
            onPressed: () {
              BlocProvider.of<CounterBloc>(context)
                  .add(IncreamentCounterEvent());
            },
            icon: Icon(Icons.add)),
        IconButton(
          onPressed: () {
            BlocProvider.of<CounterBloc>(context).add(ResertCounterEvent());
          },
          icon: Icon(Icons.exposure_zero),
        ),
        IconButton(
            onPressed: () {
              BlocProvider.of<CounterBloc>(context)
                  .add(DecreamentCounterEvent());
            },
            icon: Icon(Icons.remove)),
      ],
    );
  }
}
