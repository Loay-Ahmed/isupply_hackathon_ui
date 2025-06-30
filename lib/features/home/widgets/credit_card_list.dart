import 'package:flutter/material.dart';

import 'credit_card.dart';

class CreditCardList extends StatelessWidget {
  const CreditCardList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 285,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 2,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: SizedBox(width: 450,
              child: Padding(
                padding: const EdgeInsets.only(right: 20.0),
                child: CreditCard(
                  creditLimit: 5004300.04,
                  availableBalance: 3233550.50,
                  statementStart: DateTime.now().subtract(const Duration(days: 15)),
                  statementEnd: DateTime.now().add(const Duration(days: 15)),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
