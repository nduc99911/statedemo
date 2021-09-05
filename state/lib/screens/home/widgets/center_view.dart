import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:state/screens/home/widgets/text_view.dart';

class CenterView extends StatelessWidget {
  final int counter;
  CenterView(this.counter);

  @override
  Widget build(BuildContext context) {
    return Container(color: Colors.red, child: TextView(counter),);
  }
}
