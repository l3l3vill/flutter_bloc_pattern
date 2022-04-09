

import 'dart:async';

import 'package:bloc/bloc.dart';

class CounterBloc extends Bloc {

  //************************************************************ 
  // constructor Bloc
  CounterBloc({initialState, }) : super(initialState);
  double count = 0;

  //************************************************************ 
  // creation du streamController
  final _streamCounterController = StreamController<double>();
  //in => Sink (entrées)
  Sink<double> get sinkCounter => _streamCounterController.sink;
  //out => Stream (sorties)
  Stream<double> get streamCounter => _streamCounterController.stream;

  //************************************************************ 
  // logique de travail
  increment(){
    count = count + 10;
    sinkCounter.add(count);
  }

  decrement(){
    count = count -10;
    sinkCounter.add(count);
  }

  //************************************************************ 
  // fermeture du bloc
  void dispose(){
    _streamCounterController.close();
  }

  

}