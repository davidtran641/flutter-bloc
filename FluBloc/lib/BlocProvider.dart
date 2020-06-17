import 'package:flutter/material.dart';

class BlocProvider<T> extends StatefulWidget {
  final T counterBloc;
  final Widget child;

  BlocProvider({Key key, this.counterBloc, this.child}) : super(key: key);

  @override
  State createState() => _BlocProviderState();

  static T of<T>(BuildContext context) {
    final provider = context.findAncestorWidgetOfExactType<BlocProvider<T>>();
    return provider.counterBloc;
  }

}

class _BlocProviderState<T> extends State<BlocProvider> {
  @override
  Widget build(BuildContext context) => widget.child;
}