import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:places/resources/resources.dart';
import 'package:places/utils/app_color.dart';

class AppIcon {
  AppIcon._();
  static final icRouteWidget = SvgPicture.asset(
    Svgs.route,
    color: Colors.white,
  );
  static final icHeartWidget = SvgPicture.asset(
    Svgs.heart,
    color: AppColor.inactivGreyButtonColor,
  );
  static final icCalendarWidget = SvgPicture.asset(
    Svgs.calendar,
    color: AppColor.inactivGreyButtonColor,
  );
}
