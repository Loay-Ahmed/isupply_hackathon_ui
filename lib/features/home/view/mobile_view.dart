import 'package:flutter/material.dart';
import 'package:isupply_hackathon_ui/core/colors.dart';
import 'package:isupply_hackathon_ui/features/home/widgets/best_invoice.dart';
import 'package:isupply_hackathon_ui/features/home/widgets/features.dart';
import '../widgets/credit_card_pageview.dart';
import '../widgets/custom_appbar.dart';

class MobileUI extends StatefulWidget {
  const MobileUI({super.key});

  @override
  State<MobileUI> createState() => _MobileUIState();
}

class _MobileUIState extends State<MobileUI> {
  List<String> featureName = [
    "Best Price",
    "Cosmetics",
    "Sellers",
    "Shortage",
    "Manufacturers",
  ];
  List<String> featureDescription = [
    "See highest discounts",
    "Browse cosmetics products",
    "Nearby sellers",
    "Track relevant out of stock products",
    "Browse filtered products by producer",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: NotificationListener<ScrollNotification>(
        onNotification: (scrollNotification) {
          return false;
        },

        child: CustomScrollView(
          slivers: [
            const CustomAppbar(),
            const SliverToBoxAdapter(child: CreditCardPageView()),
            const SliverToBoxAdapter(child: BestInvoice()),
            SliverPadding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              sliver: SliverGrid(
                delegate: SliverChildBuilderDelegate((context, index) {
                  return Features(
                    featureName: featureName[index],
                    featureDescription: featureDescription[index],
                  );
                }, childCount: featureName.length),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20,
                  mainAxisExtent: 200,
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: AppColors.white,
        currentIndex: 1,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.watch_later_outlined, color: AppColors.darkBlue),
            label: "Order history",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined, color: AppColors.darkBlue),
            label: "home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline_rounded, color: AppColors.darkBlue),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}
