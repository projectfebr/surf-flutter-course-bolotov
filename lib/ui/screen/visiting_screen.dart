import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:places/domain/sight.dart';
import 'package:places/mocks.dart';
import 'package:places/resources/resources.dart';
import 'package:places/ui/screen/sight_card.dart';
import 'package:places/utils/app_color.dart';

// Экран избранного с двумя таббарами. Реализовано через DefaultTabController
class VisitingScreen extends StatefulWidget {
  const VisitingScreen({Key? key}) : super(key: key);

  @override
  _VisitingScreenState createState() => _VisitingScreenState();
}

class _VisitingScreenState extends State<VisitingScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 2,
      child: Scaffold(
        appBar: const AppBarFavorites(),
        body: TabBarView(
          children: [
            WantToVisitListWidget(
              sightList: <Sight>[mocks[1]],
            ),
            VisitedListWidget(
              sightList: <Sight>[mocks[0]],
            ),
          ],
        ),
      ),
    );
  }
}

//Виджет со списком посещенных мест
class VisitedListWidget extends StatelessWidget {
  final List<Sight> sightList;
  const VisitedListWidget({Key? key, required this.sightList})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return sightList.isEmpty
        ? PlaceholderVisitListWidget(
            image: SvgPicture.asset(
              Svgs.go,
              width: 64,
              height: 64,
              color: AppColor.inactivGreyButtonColor,
            ),
            title: 'Пусто',
            subtitle: 'Завершите маршрут,\nчтобы место попало сюда.',
          )
        : Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [SightCard(sight: mocks[0])],
            ),
          );
  }
}

// Виджет со списком мест которые хочу посетить
class WantToVisitListWidget extends StatelessWidget {
  final List<Sight> sightList;

  const WantToVisitListWidget({Key? key, required this.sightList})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return sightList.isEmpty
        ? PlaceholderVisitListWidget(
            image: SvgPicture.asset(
              Svgs.card,
              width: 64,
              height: 64,
              color: AppColor.inactivGreyButtonColor,
            ),
            title: 'Пусто',
            subtitle: 'Отмечайте понравившиеся\n места и они появиятся здесь.',
          )
        : Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [SightCard(sight: mocks[0])],
            ),
          );
  }
}

// Виджет аппбара с таббаром
class AppBarFavorites extends StatelessWidget implements PreferredSizeWidget {
  const AppBarFavorites({
    Key? key,
  }) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(100);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      title: const Text(
        'Избранное',
        style: TextStyle(
          color: AppColor.kVisitScreenMainColor,
          fontSize: 18,
          fontWeight: FontWeight.w500,
        ),
      ),
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(52),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
          child: Theme(
            data: ThemeData(
              highlightColor: Colors.transparent,
              splashColor: Colors.transparent,
            ),
            child: Container(
              height: 40,
              decoration: BoxDecoration(
                color: const Color.fromRGBO(245, 245, 245, 1),
                borderRadius: BorderRadius.circular(
                  20.0,
                ),
              ),
              child: TabBar(
                  indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      25.0,
                    ),
                    color: AppColor.kVisitScreenMainColor,
                  ),
                  labelColor: Colors.white,
                  unselectedLabelColor: Colors.black,
                  tabs: const [
                    Tab(
                      child: Text(
                        'Хочу посетить',
                        style: TextStyle(fontWeight: FontWeight.w700),
                      ),
                    ),
                    Tab(
                      child: Text(
                        'Посетил',
                        style: TextStyle(fontWeight: FontWeight.w700),
                      ),
                    ),
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}

// Верстка плейсхолдера для списков мест (если списки пусты)
class PlaceholderVisitListWidget extends StatelessWidget {
  final String title;
  final String subtitle;
  final Widget image;

  const PlaceholderVisitListWidget({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 53),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          image,
          const SizedBox(height: 32),
          Text(
            title,
            style: const TextStyle(
              fontFamily: 'Roboto',
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color: AppColor.inactivGreyButtonColor,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            subtitle,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontFamily: 'Roboto',
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: AppColor.inactivGreyButtonColor,
            ),
          ),
        ],
      ),
    ));
  }
}
