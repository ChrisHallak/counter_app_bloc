/*

import 'package:counter_app_with_bloc/bloc/counter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'my_floating_action_button.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Counter App with BLOC')),
      body: Center(child: BlocBuilder<CounterBloc, CounterState>(
        builder: (context, state) {
          if (state is CounterInitial)
            return Text('0');
          else if (state is CounterChangedState)
            return Text('${CounterBloc.getObject(context).counter}');
          else
            return SizedBox();
        },
      )),
      floatingActionButton: MyFloatingActionButton(),
    );
  }
}
*/

import 'package:counter_app_with_bloc/bloc/counter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'my_floating_action_button.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Counter App with BLOC')),
        body: Center(
            child: BlocConsumer<CounterBloc, CounterState>(
          listener: (context, state) {},
          builder: (context, state) {
            return Text('${CounterBloc.getObject(context).counter}');
          },
        )),
        floatingActionButton: MyFloatingActionButton());
  }
}
