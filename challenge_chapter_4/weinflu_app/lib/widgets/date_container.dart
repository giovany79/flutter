import 'package:flutter/material.dart';

import '../design/colors.dart';

class DateContainer extends StatelessWidget {
  final String weekDay;
  final String monthDay;

  const DateContainer(
      {super.key, required this.weekDay, required this.monthDay});

  @override
  Widget build(BuildContext context) {
    var newIcon = const Icon(
      Icons.lens_sharp,
      size: 5,
      color: WeinFluColors.brandOnSuccessColor,
    );

    return Container(
        height: 50.0,
        width: 56,
        child: Column(
          children: [
            Text(
              weekDay,
              textAlign: TextAlign.left,
              style: const TextStyle(
                  color: WeinFluColors.brandDarkColor,
                  fontWeight: FontWeight.w700,
                  fontFamily: 'RobotoMono',
                  fontSize: 18),
            ),
            Text(
              monthDay,
              textAlign: TextAlign.left,
              style: const TextStyle(
                  color: WeinFluColors.brandDarkColor,
                  fontWeight: FontWeight.w700,
                  fontFamily: 'RobotoMono',
                  fontSize: 18),
            ),
            newIcon,
          ],
        ));
  }
}
