import 'package:flutter/material.dart';

class SightListScreen extends StatefulWidget {
  const SightListScreen({Key? key}) : super(key: key);

  @override
  _SightListScreenState createState() => _SightListScreenState();
}

class _SightListScreenState extends State<SightListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        // 2) Уберите тени
        shadowColor: Colors.transparent,
        // 1) Задайте цвет аппбара идентично цвету заднего фона
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        // 3)Задайте высоту аппбара так, чтобы текст не вылезал за края виджета
        toolbarHeight: 100,
        title: const Text(
          'Список интересных мест',
          maxLines: 2,
          textAlign: TextAlign.start,
          style: TextStyle(
            fontFamily: 'Roboto',
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 32,
          ),
        ),
      ),
      body: const Center(
        child: Text('Hello'),
      ),
    );
  }
}
