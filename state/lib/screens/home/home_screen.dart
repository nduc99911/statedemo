import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:state/screens/home/widgets/center_view.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HomeScreen();
}

class _HomeScreen extends State<HomeScreen> {
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
      body: Center(child: CenterView(counter),),
    );
  }
}
