import 'package:flutter/material.dart';
import 'package:weinflu_app/design/colors.dart';
import 'package:weinflu_app/design/copies.dart';
import 'package:weinflu_app/design/radius.dart';

import '../widgets/home_app_bar_title.dart';
import '../mocks/transactions_mock.dart';

class ViewAllPage extends StatefulWidget {
  const ViewAllPage({super.key});

  @override
  State<ViewAllPage> createState() => _ViewAllPageState();
}

class _ViewAllPageState extends State<ViewAllPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 97,
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  bottomLeft: WeinFluRadius.small,
                  bottomRight: WeinFluRadius.small)),
          backgroundColor: WeinFluColors.brandLightColor,
          leading: Container(
            height: 40,
            width: 77,
            margin: EdgeInsets.fromLTRB(16, 45, 16, 12),
            decoration: BoxDecoration(
                border: Border.all(color: WeinFluColors.brandLightColor),
                borderRadius: BorderRadius.circular(12)),
            child: IconButton(
              onPressed: () => Navigator.of(context).pop(),
              icon: const Icon(
                Icons.arrow_back,
                color: WeinFluColors.brandPrimaryColor,
              ),
            ),
          ),
          title: Padding(
            padding: const EdgeInsets.fromLTRB(0, 45, 16, 12),
            child: Text(
              Copies.recentTransaction,
              style: Theme.of(context).textTheme.headlineLarge,
            ),
          ),
        ),
        body: Column(children: [
          Container(
              height: 36,
              margin: const EdgeInsets.symmetric(horizontal: 6, vertical: 22),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, indice) {
                  var currentCategories = TransactionsMocks.categories[indice];
                  return Padding(
                      padding: const EdgeInsets.only(right: 12),
                      child: MaterialButton(
                        padding: const EdgeInsets.all(10),
                        height: 55,
                        minWidth: 55,
                        color: indice == 0
                            ? WeinFluColors.brandPrimaryColor
                            : WeinFluColors.brandLightColor,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)),
                        onPressed: () {},
                        child: Text(
                          currentCategories,
                          style: TextStyle(
                              color: indice != 0
                                  ? WeinFluColors.brandPrimaryColor
                                  : WeinFluColors.brandLightColor,
                              fontSize: 13),
                        ),
                      ));
                },
                itemCount: TransactionsMocks.categories.length,
              )),
        ]));
  }
}
