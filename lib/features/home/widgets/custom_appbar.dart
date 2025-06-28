import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../core/colors.dart';

class CustomAppbar extends StatelessWidget {
  final int notificationCount;
  final int cartItems;
  final Widget? flexibleSpace;
  final bool showSearch;

  const CustomAppbar({
    super.key,
    this.notificationCount = 3,
    this.cartItems = 0,
    this.flexibleSpace,
    this.showSearch = true,
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
      expandedHeight: showSearch ? 120 : 80,
      flexibleSpace: flexibleSpace ?? _buildDefaultFlexibleSpace(),
      actions: [
        _buildNotificationBadge(),
        const SizedBox(width: 12),
        _buildCartBadge(),
        const SizedBox(width: 16),
      ],
    );
  }

  LayoutBuilder? _buildDefaultFlexibleSpace() {
    return showSearch
        ? LayoutBuilder(
            builder: (context, constraints) {
              return Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      AppColors.darkBlue,
                      AppColors.mediumBlue,
                    ],
                  ),
                ),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 16,
                      right: 16,
                      bottom: 16,
                    ),
                    child: _buildSearchField(),
                  ),
                ),
              );
            },
          )
        : null;
  }

  Widget _buildSearchField() {
    return Container(
      height: 45,
      decoration: BoxDecoration(
        color: AppColors.white.withOpacity(0.2),
        borderRadius: BorderRadius.circular(22),
      ),
      child: TextField(
        style: GoogleFonts.cairo(color: AppColors.white),
        decoration: InputDecoration(
          hintText: "Search for products...",
          hintStyle: GoogleFonts.cairo(
            color: AppColors.white.withOpacity(0.7),
          ),
          border: InputBorder.none,
          prefixIcon: Icon(
            Icons.search,
            color: AppColors.white.withOpacity(0.7),
          ),
          contentPadding: const EdgeInsets.symmetric(vertical: 12),
        ),
      ),
    );
  }

  Widget _buildNotificationBadge() {
    return Stack(
      alignment: Alignment.center,
      children: [
        IconButton(
          icon: Icon(
            Icons.notifications_none_rounded,
            color: AppColors.white,
            size: 28,
          ),
          onPressed: () {},
        ),
        if (notificationCount > 0)
          Positioned(
            right: 8,
            top: 8,
            child: Container(
              padding: const EdgeInsets.all(4),
              decoration: BoxDecoration(
                color: AppColors.yellow,
                shape: BoxShape.circle,
                border: Border.all(
                  color: AppColors.darkBlue,
                  width: 2,
                ),
              ),
              constraints: const BoxConstraints(
                minWidth: 20,
                minHeight: 20,
              ),
              child: Text(
                notificationCount.toString(),
                style: GoogleFonts.cairo(
                  color: AppColors.darkBlue,
                  fontSize: 10,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
      ],
    );
  }

  Widget _buildCartBadge() {
    return Stack(
      alignment: Alignment.center,
      children: [
        IconButton(
          icon: Icon(
            Icons.shopping_cart_outlined,
            color: AppColors.white,
            size: 28,
          ),
          onPressed: () {},
        ),
        if (cartItems > 0)
          Positioned(
            right: 8,
            top: 8,
            child: Container(
              padding: const EdgeInsets.all(4),
              decoration: BoxDecoration(
                color: AppColors.lightGreen,
                shape: BoxShape.circle,
                border: Border.all(
                  color: AppColors.darkBlue,
                  width: 2,
                ),
              ),
              constraints: const BoxConstraints(
                minWidth: 20,
                minHeight: 20,
              ),
              child: Text(
                cartItems.toString(),
                style: GoogleFonts.cairo(
                  color: AppColors.darkBlue,
                  fontSize: 10,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
      ],
    );
  }
}