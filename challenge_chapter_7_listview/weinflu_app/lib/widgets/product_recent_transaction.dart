import 'package:flutter/material.dart';
import 'package:weinflu_app/design/colors.dart';
import 'package:weinflu_app/widgets/custom_money_display.dart';

enum TypeProductResentTransaction { incomes, outcomes }

class ProductRecentTransaction extends StatelessWidget {
  final double amount;
  final String movementName;
  final String movementDate;
  final TypeProductResentTransaction typeProductResentTransaction;

  const ProductRecentTransaction(
      {super.key,
      required this.amount,
      required this.movementName,
      required this.movementDate,
      required this.typeProductResentTransaction});

  @override
  Widget build(BuildContext context) {
    var iconIncomes = const Icon(
      Icons.expand_less,
      size: 40,
      color: WeinFluColors.brandOnSuccessColor,
    );
    var iconSpending = const Icon(
      Icons.expand_circle_down_outlined,
      size: 40,
      color: WeinFluColors.brandOnErrorColor,
    );
    var currentIcon = iconIncomes;
    var currentBgPercentageColor = WeinFluColors.brandSuccessColor;
    var currentTextPercentageColor = WeinFluColors.brandOnSuccessColor;
    if (typeProductResentTransaction == TypeProductResentTransaction.outcomes) {
      currentBgPercentageColor = WeinFluColors.brandErrorColor;
      currentTextPercentageColor = WeinFluColors.brandOnErrorColor;
      currentIcon = iconSpending;
    }
    var incomesIcon = const Icon(
      Icons.arrow_circle_up,
      color: WeinFluColors.brandOnSuccessColor,
    );
    var spendingIcon = const Icon(Icons.arrow_circle_down,
        color: WeinFluColors.brandOnErrorColor);

    var finalIcon = incomesIcon;
    var colorAmmount = WeinFluColors.brandDarkColor;

    if (amount < 0) {
      finalIcon = spendingIcon;
      const colorAmmount = WeinFluColors.brandOnErrorColor;
    }

    return Container(
      margin: const EdgeInsets.only(
        top: 14,
      ),
      height: 100,
      decoration: const BoxDecoration(
        shape: BoxShape.rectangle,
        color: WeinFluColors.brandLightColor,
        borderRadius: BorderRadius.all(Radius.circular(16)),
      ),
      child: Row(
        children: [
          Container(
            margin: const EdgeInsets.only(left: 16),
            height: 10,
            width: 10,
            decoration: const BoxDecoration(
              color: WeinFluColors.brandSecondaryColor,
              borderRadius: BorderRadius.all(Radius.circular(12)),
            ),
            child: Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(color: Colors.white),
                child: finalIcon),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.only(top: 30, left: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    movementName,
                    textAlign: TextAlign.left,
                    style: const TextStyle(
                        color: WeinFluColors.brandDarkColor,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'RobotoMono',
                        fontSize: 14),
                  ),
                  Text(
                    movementDate,
                    textAlign: TextAlign.left,
                    style: const TextStyle(
                        color: WeinFluColors.brandDarkColor,
                        fontWeight: FontWeight.w300,
                        fontFamily: 'RobotoMono',
                        fontSize: 10),
                  )
                ],
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(
              bottom: 5,
              right: 10,
            ),
            height: 19,
            width: 140,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomMoneyDisplay(
                  padding: const EdgeInsets.only(top: 10, right: 10),
                  amount: amount,
                  amountStyle: const TextStyle(
                      color: WeinFluColors.brandPrimaryColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 12),
                  amountStyleSmall: const TextStyle(
                      color: WeinFluColors.brandPrimaryColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 10),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
