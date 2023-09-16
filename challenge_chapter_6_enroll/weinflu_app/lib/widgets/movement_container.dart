import 'package:flutter/material.dart';
import 'package:weinflu_app/widgets/date_container.dart';

import 'movement_list_container.dart';

class MovementContainer extends StatelessWidget {
  const MovementContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.all(10),
        child: const Row(children: [
          DateContainer(
            weekDay: 'Tue',
            monthDay: '4',
          ),
          Expanded(child: MovementListContainer()),
        ]));
  }
}
