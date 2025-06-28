import 'package:flutter/material.dart';
import '../../../core/colors.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../widgets/credit_card.dart';

class CreditCardPageView extends StatefulWidget {
  const CreditCardPageView({super.key});

  @override
  _CreditCardPageViewState createState() => _CreditCardPageViewState();
}

class _CreditCardPageViewState extends State<CreditCardPageView> {
  final PageController _pageController = PageController();
  int creditCardCount = 2;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 271,
          child: PageView.builder(
            controller: _pageController,
            itemCount: creditCardCount, // Number of items
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                child: CreditCard(
                  creditLimit: 5000.00,
                  availableBalance: 3250.00,
                  statementStart: DateTime.now().subtract(
                    const Duration(days: 15),
                  ),
                  statementEnd: DateTime.now().add(const Duration(days: 15)),
                ),
              );
            },
          ),
        ),

        // 2. Dot Indicators
        SmoothPageIndicator(
          controller: _pageController,
          count: creditCardCount,
          effect: ExpandingDotsEffect(
            activeDotColor: AppColors.darkBlue,
            dotColor: Colors.grey,
            dotHeight: 10,
            dotWidth: 10,
          ),
        ),
      ],
    );
  }
}
