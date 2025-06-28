import 'package:flutter/material.dart';
import 'package:isupply_hackathon_ui/core/colors.dart';
import '../widgets/credit_card_pageview.dart';
import '../widgets/custom_appbar.dart';
import '../widgets/custom_search_bar.dart'; // Updated import

class MobileUI extends StatefulWidget {
  const MobileUI({super.key});

  @override
  State<MobileUI> createState() => _MobileUIState();
}

class _MobileUIState extends State<MobileUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: CustomScrollView(
        slivers: [
          CustomAppbar(),
          SliverToBoxAdapter(child: CreditCardPageView()),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: AppColors.white,
        currentIndex: 1,
        items: [
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
