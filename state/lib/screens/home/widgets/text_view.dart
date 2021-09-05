import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextView extends StatelessWidget {
  final int counter;

  TextView(this.counter);

  @override
  Widget build(BuildContext context) {
    return Text(counter.toString(), style: Theme.of(context).textTheme.bodyText1?.copyWith(color: Colors.white, fontSize: 50),);
  }
}