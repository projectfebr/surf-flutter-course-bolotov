import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyFirstStateFullWidget(),
    );
  }
}

class MyFirstWidget extends StatelessWidget {
  MyFirstWidget({Key? key}) : super(key: key);

  var count = 0;

  @override
  Widget build(BuildContext context) {
    print('call build MyFirstWidget: $count');
    count++;
    return Container(
      child: const Text('Hello'),
    );
  }
}

class MyFirstStateFullWidget extends StatefulWidget {
  MyFirstStateFullWidget({Key? key}) : super(key: key);

  @override
  _MyStateFullWidgetState createState() => _MyStateFullWidgetState();
}

class _MyStateFullWidgetState extends State<MyFirstStateFullWidget> {
  var count = 0;
  @override
  Widget build(BuildContext context) {
    print('call build MyFirstWidget: $count');
    count++;
    return Container(
      child: const Text('Hello'),
    );
  }
}
