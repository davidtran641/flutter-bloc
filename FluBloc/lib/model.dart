import 'dart:async';

import 'package:rxdart/rxdart.dart';

class CounterBloc {
  int _counter = 0;

  Sink<void> get increment => _counterController.sink;
  final _counterController = StreamController<void>();

  Stream<int> get counter => _counterSubject.stream;
  final _counterSubject = BehaviorSubject<int>();

  CounterBloc() {
    _counterController.stream.listen((event) {
      _counter ++;
      _counterSubject.add(_counter);
    });
  }
}