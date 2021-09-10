// Верстка плейсхолдера для списков мест (если списки пусты)
import 'package:flutter/material.dart';
import 'package:places/utils/app_color.dart';

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
