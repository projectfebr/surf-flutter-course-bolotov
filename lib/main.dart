import 'package:flutter/material.dart';
import 'package:places/ui/screen/sight_list_screen.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SightListScreen(),
      title: 'Places',
    );
  }
}

// class MyFirstWidget extends StatelessWidget {
//   MyFirstWidget({Key? key}) : super(key: key);

//   var count = 0;

//   @override
//   Widget build(BuildContext context) {
//     Type getRuntimeType() {
//       return context.runtimeType;
//     }

//     print(getRuntimeType());

//     print('call build MyFirstWidget: $count');
//     count++;
//     return Container(
//       child: const Text('Hello'),
//     );
//   }
// }

// class MyFirstStateFullWidget extends StatefulWidget {
//   MyFirstStateFullWidget({Key? key}) : super(key: key);

//   @override
//   _MyStateFullWidgetState createState() => _MyStateFullWidgetState();
// }

// class _MyStateFullWidgetState extends State<MyFirstStateFullWidget> {
//   Type getRuntimeType() {
//     return context.runtimeType;
//   }

//   var count = 0;
//   @override
//   Widget build(BuildContext context) {
//     print(getRuntimeType());
//     print('call build MyFirstWidget: $count');
//     count++;
//     return Container(
//       child: const Text('Hello'),
//     );
//   }
// }
