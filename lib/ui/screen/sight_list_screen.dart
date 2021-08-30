import 'package:flutter/material.dart';
import 'package:places/mocks.dart';
import 'package:places/ui/screen/sight_card.dart';

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
        // Убрать тени
        shadowColor: Colors.transparent,
        // Задайте цвет аппбара идентично цвету заднего фона
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        toolbarHeight: 100,
        centerTitle: false,
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
        // RichText(
        //   text: const TextSpan(
        //     style: TextStyle(
        //       fontFamily: 'Roboto',
        //       color: Colors.black,
        //       fontWeight: FontWeight.bold,
        //       fontSize: 32,
        //     ),
        //     children: [
        //       TextSpan(children: [
        //         TextSpan(
        //           text: 'C',
        //           style: TextStyle(color: Color.fromRGBO(76, 175, 80, 1.0)),
        //         ),
        //         TextSpan(text: 'писок\n'),
        //       ]),
        //       TextSpan(children: [
        //         TextSpan(
        //           text: 'и',
        //           style: TextStyle(color: Color.fromRGBO(252, 221, 61, 1.0)),
        //         ),
        //         TextSpan(text: 'нтересных мест'),
        //       ]),
        //     ],
        //   ),
        // ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SightCard(sight: mocks[0]),
              const SizedBox(height: 16),
              SightCard(sight: mocks[1]),
              const SizedBox(height: 16),
              SightCard(sight: mocks[0]),
              const SizedBox(height: 16),
              SightCard(sight: mocks[1]),
            ],
          ),
        ),
      ),
    );
  }
}
