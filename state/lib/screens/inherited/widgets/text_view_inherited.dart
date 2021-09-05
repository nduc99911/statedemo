import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:state/screens/inherited/widgets/root_widget.dart';

class TextViewInherited extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final counter = RootWidget.of(context)?.data ?? 0;
    return Text(counter.toString(), style: Theme.of(context).textTheme.bodyText1?.copyWith(color: Colors.white, fontSize: 50),);
  }
}