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
      appBar: const MyAppBar(
        title: 'Список интересных мест',
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

// реализация AppBar через PreferredSizeWidget
class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBar({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Text(
          title,
          maxLines: 2,
          textAlign: TextAlign.start,
          style: const TextStyle(
            fontFamily: 'Roboto',
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 32,
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(100);
}
