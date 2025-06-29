import 'package:flutter/material.dart';
import 'package:isupply_hackathon_ui/core/colors.dart';
import 'package:isupply_hackathon_ui/features/home/widgets/custom_search_bar.dart';

class CustomAppbar extends StatelessWidget {
  final int notificationCount;
  final int cartItems;

  const CustomAppbar({
    super.key,
    this.notificationCount = 3,
    this.cartItems = 0,
  });

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      title: Image.asset(
        "assets/images/logo.png",
        scale: 2.5,
        fit: BoxFit.cover,
      ),
      backgroundColor: AppColors.darkBlue,
      foregroundColor: AppColors.white,
      pinned: true,
      floating: true,
      expandedHeight: 120,
      collapsedHeight: 60,
      flexibleSpace: LayoutBuilder(
        builder: (context, constraints) {
          final currentHeight = constraints.maxHeight;
          if (currentHeight < 135) return const SizedBox();
          return Container(
            decoration: const BoxDecoration(color: AppColors.darkBlue),
            child: const Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: EdgeInsets.only(left: 5, right: 5, bottom: 5),
                child: CustomSearchBar(),
              ),
            ),
          );
        },
      ),
      actions: [
        Badge.count(
          backgroundColor: AppColors.yellow,
          textColor: AppColors.darkBlue,
          count: notificationCount,
          child: const Icon(Icons.notifications_none_rounded, size: 28),
        ),
        const SizedBox(width: 15),
        Badge.count(
          count: cartItems,
          textColor: AppColors.darkBlue,
          backgroundColor: AppColors.yellow,
          child: const Icon(Icons.shopping_cart_outlined, size: 28),
        ),
        const SizedBox(width: 16),
      ],
    );
  }
}
