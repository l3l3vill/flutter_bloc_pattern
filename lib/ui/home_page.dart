import 'package:bloc_pattern_practice/blocs/counter_bloc.dart';
import 'package:flutter/material.dart';

import 'counter_page.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    int _counter = 0;

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      //body: const CounterPage(),
      body: ElevatedButton(
        child: const Text('Go to Counter'),
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context) {
            return BlocProvider<CounterBloc>(
              child: CounterPage(),
              bloc: CounterBloc(),
            );
          }));
        },
      ),
    );
  }
}
