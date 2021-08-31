import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:places/domain/sight.dart';
import 'package:places/resources/resources.dart';
import 'package:places/utils/app_color.dart';

// Класс верстки экрана детальной информации о достопримечательности.
// Параметр конструктора sight - данные о достопримечательности типа Sight.
class SightDetails extends StatelessWidget {
  final Sight sight;
  const SightDetails({
    required this.sight,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Widget routeIconWidget = SvgPicture.asset(
      Svgs.route,
      semanticsLabel: 'Route',
      color: Colors.white,
    );
    final Widget calendarIconWidget = SvgPicture.asset(
      Svgs.calendar,
      semanticsLabel: 'Calendar',
      color: AppColor.inactivGreyButtonColor,
    );
    final Widget heartIconWidget = SvgPicture.asset(
      Svgs.heart,
      semanticsLabel: 'Heart',
      color: AppColor.activGreyButtonColor,
    );
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            AspectRatio(
              aspectRatio: 1,
              child: Container(
                color: Colors.lightGreen,
                child: Padding(
                  padding: const EdgeInsets.only(top: 36, left: 16),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      width: 32,
                      height: 32,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Icon(
                        Icons.arrow_back_ios_outlined,
                        size: 15,
                        color: AppColor.topIconDetailsScreenColor,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  const SizedBox(height: 24),
                  Text(
                    sight.name,
                    style: const TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                      color: AppColor.activGreyButtonColor,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Flexible(
                        child: Text(
                          sight.type,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            color: AppColor.activGreyButtonColor,
                          ),
                        ),
                      ),
                      const SizedBox(width: 16),
                      const Text(
                        'закрыто до 09:00',
                        style: TextStyle(
                          fontFamily: 'Roboto',
                          fontSize: 14,
                          color: AppColor.inactivGreyButtonColor,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 24),
                  Text(
                    sight.details,
                    style: const TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 14,
                      color: AppColor.activGreyButtonColor,
                    ),
                  ),
                  const SizedBox(height: 24),
                  Container(
                    width: double.infinity,
                    height: 48,
                    decoration: BoxDecoration(
                      color: AppColor.greenButtonColor,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // AppIcon.icRouteWidget,
                        routeIconWidget,
                        const SizedBox(width: 10),
                        const Text(
                          'ПОСТРОИТЬ МАРШРУТ',
                          style: TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 24),
                  const Divider(
                    thickness: 0.8,
                    color: AppColor.dividerColor,
                  ),
                  const SizedBox(height: 19),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          // AppIcon.icCalendarWidget,
                          calendarIconWidget,
                          const SizedBox(width: 9),
                          const Text(
                            'Запланировать',
                            style: TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 14,
                              color: Color.fromRGBO(124, 126, 146, 0.56),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          // AppIcon.icHeartWidget,
                          heartIconWidget,
                          const SizedBox(width: 9),
                          const Text(
                            'В избранное',
                            style: TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 14,
                              color: AppColor.activGreyButtonColor,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
