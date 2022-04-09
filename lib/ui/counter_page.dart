import 'package:bloc_pattern_practice/blocs/counter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class CounterPage extends StatelessWidget {
  const CounterPage
({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //instance of counter Bloc
    final CounterBloc bloc = BlocProvider.of<CounterBloc>(context);
    return Stack(
      children: [
        Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: 
              StreamBuilder<double>(stream: bloc.streamCounter, builder: ,)
              <Widget>[
                const Text(
                  'You have pushed the button this many times:',
                ),
                Text(
                  '_counter',
                  style: Theme.of(context).textTheme.headline4,
                ),
              ],
            ),
            
          ),
          FloatingActionButton(
        onPressed: () {
          print('_incrementCounter');
        } ,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), 
      ],
    );
      
  }
}
