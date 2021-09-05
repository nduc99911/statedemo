import 'dart:ui';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // return MaterialApp(
    //   title: 'Title of Application',
    //   theme: ThemeData(
    //     primarySwatch: Colors.blue,
    //     visualDensity: VisualDensity.adaptivePlatformDensity,
    //   ),
    //   home: MyHomePage(),
    // );
    return MaterialApp(
      title: 'Hello',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: TextFiled(),
      // home: Container(
      //   color: Colors.white,
      //   height: 350.0,
      //   width: 150.0,
      //   margin: EdgeInsets.all(100),
      //   padding: EdgeInsets.all(40),
      //   alignment: Alignment.topLeft,
      //   transform: Matrix4.rotationX(0.1),
      //   child: RichText(
      //     text: TextSpan(
      //         text: 'Don\'t have an acount',
      //         style: TextStyle(color: Colors.black, fontSize: 20),
      //         children: <TextSpan>[
      //           TextSpan(
      //               text: ' Sign up',
      //               style: TextStyle(color: Colors.blueAccent, fontSize: 20),
      //               recognizer: TapGestureRecognizer()),
      //         ]),
      //   ),
      // child: Text(
      //   'hello',
      //   style: TextStyle(
      //     color: Colors.black,
      //     fontSize: 30,
      //     fontWeight: FontWeight.w300,
      //     fontStyle: FontStyle.italic,
      //     letterSpacing: 8,
      //     wordSpacing: 20,
      //     backgroundColor: Colors.yellow,
      //     shadows: [
      //       Shadow(color: Colors.black, offset: Offset(5, 1), blurRadius: 30)
      //     ],
      //   ),
      // ),
      //     ),
    );
  }
}

//scaffold
class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AppBar Title"),
      ),
      body: Center(
          child: Text(
        'Hello World',
        style: TextStyle(color: Colors.yellow, fontSize: 30),
      )),
      drawer: Drawer(
        child: ListView(
          children: const <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.red,
              ),
              child: Text(
                'Welcome to Javatpoint',
                style: TextStyle(
                  color: Colors.green,
                  fontSize: 30,
                ),
              ),
            ),
            ListTile(
              title: Text('1'),
            ),
            ListTile(
              title: Text("All Mail Inboxes"),
              leading: Icon(Icons.mail),
            ),
            Divider(
              height: 0.2,
            ),
            ListTile(
              title: Text("Primary"),
            ),
            ListTile(
              title: Text("Social"),
            ),
            ListTile(
              title: Text("Promotions"),
            ),
          ],
        ),
      ),
    );
  }
}

//row va column
class RowvaColumn extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyhomePageState();
  }
}

class _MyhomePageState extends State<RowvaColumn> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Fluter row exemple'),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(12),
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8), color: Colors.green),
            child: Text(
              'Nodejs',
              style: TextStyle(color: Colors.black, fontSize: 20),
            ),
          ),
          Container(
            margin: EdgeInsets.all(12),
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8), color: Colors.yellow),
            child: Text(
              'MySql',
              style: TextStyle(color: Colors.black, fontSize: 20),
            ),
          ),
          Container(
            margin: EdgeInsets.all(12),
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8), color: Colors.blue),
            child: Text(
              'SQLite',
              style: TextStyle(color: Colors.black, fontSize: 20),
            ),
          )
        ],
      ),
    );
  }
}

//column
class RowvaColumn1 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyhomePageState1();
  }
}

class _MyhomePageState1 extends State<RowvaColumn1> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Exemple Column'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(20),
            padding: EdgeInsets.all(18),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8), color: Colors.red),
            child: Text(
              'Mysql',
              style: TextStyle(color: Colors.yellow, fontSize: 20),
            ),
          ),
          Container(
            margin: EdgeInsets.all(20),
            padding: EdgeInsets.all(18),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8), color: Colors.red),
            child: Text(
              'Ndejs',
              style: TextStyle(color: Colors.black, fontSize: 20),
            ),
          ),
          Container(
            margin: EdgeInsets.all(20),
            padding: EdgeInsets.all(18),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8), color: Colors.red),
            child: Text(
              'Sqlite',
              style: TextStyle(color: Colors.blue, fontSize: 20),
            ),
          ),
        ],
      ),
    );
  }
}

//ricktext
class RickText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(home: MyTextPage());
  }
}

class MyTextPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(title: Text("Rich Text Widget Example")),
        body: Container(
            child: Center(
                child: RichText(
          text: TextSpan(
            style: Theme.of(context).textTheme.body1,
            children: [
              TextSpan(text: 'Click ', style: TextStyle(fontSize: 25)),
              WidgetSpan(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 2.0),
                  child: Icon(Icons.add_a_photo, color: Colors.red),
                ),
              ),
              TextSpan(text: ' to add', style: TextStyle(fontSize: 25)),
            ],
          ),
        ))));
  }
}
//text field

class TextFiled extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _TextFiled1();
  }
}

class _TextFiled1 extends State<TextFiled> {
  TextEditingController nameControler = TextEditingController();
  TextEditingController passwordControler = TextEditingController();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Fluter TextField Exempke'),
      ),
      body: Padding(
        padding: EdgeInsets.all(15),
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(15),
              child: TextField(
                controller: nameControler,
                onChanged: (text) {},
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'User Name',
                  hintText: 'Enter Your Name',
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(15),
              child: TextField(
                obscureText: true,
                controller: passwordControler,
                onChanged: (text) {},
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                  hintText: 'Enter Password',
                ),
              ),
            ),
            RaisedButton(
              textColor: Colors.white,
              color: Colors.blue,
              child: Text('Sign In'),
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                          title: Text('Ok nha'),
                          content: Text(nameControler.text),
                          actions: [
                            TextButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                child: Text('Yes')),
                            TextButton(onPressed: () {}, child: Text('No')),
                          ],
                        ));
              },
            )
          ],
        ),
      ),
    );
  }
}
