//Виджет со списком посещенных мест
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:places/domain/sight.dart';
import 'package:places/mocks.dart';
import 'package:places/resources/resources.dart';
import 'package:places/ui/screen/sight_card.dart';
import 'package:places/ui/widgets/placegolder_visit_list_widget.dart';
import 'package:places/utils/app_color.dart';

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
