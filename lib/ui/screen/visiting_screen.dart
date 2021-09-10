import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:places/domain/sight.dart';
import 'package:places/mocks.dart';
import 'package:places/ui/widgets/visited_list_widget.dart';
import 'package:places/ui/widgets/want_to_visit_list_widget.dart';
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
