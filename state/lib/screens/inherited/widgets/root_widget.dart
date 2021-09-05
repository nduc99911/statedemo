import 'package:flutter/cupertino.dart';

class RootWidget extends InheritedWidget {
  final int data;

  RootWidget({required Widget child, required this.data}) : super(child: child);

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) {
    return false;
  }

  static RootWidget? of(BuildContext context){
    return context.dependOnInheritedWidgetOfExactType<RootWidget>();
  }
}