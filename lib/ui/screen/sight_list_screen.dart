import 'package:flutter/material.dart';
import 'package:places/mocks.dart';
import 'package:places/ui/screen/sight_card.dart';

// Класс верстки главного экрана со списком карточек [SightCard] достопримечатльностей
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
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(100), // here the desired height
        child: MyAppBarContent(),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
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

//widget содержит контент для своей реализации AppBar через PreferredSize
class MyAppBarContent extends StatelessWidget {
  const MyAppBarContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Text(
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
    );
  }
}
