import 'package:flutter/material.dart';
import 'package:places/ui/screen/main_nav_widget.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MainNavigationWidget(),
      title: 'Places',
    );
  }
}
