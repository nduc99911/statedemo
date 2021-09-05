import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:state/screens/home/widgets/text_view.dart';
import 'package:state/screens/inherited/widgets/text_view_inherited.dart';

class CenterViewInherited extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Center(child: Container(color: Colors.red, child: TextViewInherited(),),);
  }
}
