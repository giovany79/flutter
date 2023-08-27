import 'package:flutter/material.dart';
import 'package:weinflu_app/widgets/product_recent_transaction.dart';

class MovementListContainer extends StatelessWidget {
  const MovementListContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 250.0,
        width: 156,
        child: ListView(children: const [
          ProductRecentTransaction(
            amount: -350000,
            movementName: 'Pago servicios publicos',
            movementDate: 'Tuesday 4th September 2023',
            typeProductResentTransaction: TypeProductResentTransaction.incomes,
          ),
          ProductRecentTransaction(
            amount: 1500000,
            movementName: 'Ingreso Arriendo',
            movementDate: 'Tuesday 4th September 2023',
            typeProductResentTransaction: TypeProductResentTransaction.incomes,
          )
        ]));
  }
}
