import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:state/screens/home/widgets/center_view.dart';
import 'package:state/screens/inherited/widgets/center_view_inherited.dart';
import 'package:state/screens/inherited/widgets/root_widget.dart';

class HomeScreenInheritedWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HomeScreenInheritedWidget();
}

class _HomeScreenInheritedWidget extends State<HomeScreenInheritedWidget> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            counter++;
          });
        },
        child: Icon(Icons.add),
      ),
      body: RootWidget(child: CenterViewInherited(), data: counter,),
    );
  }
}