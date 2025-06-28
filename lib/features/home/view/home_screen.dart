import "package:flutter/material.dart";

import "desktop_view.dart";
import "mobile_view.dart";
import "tablet_view.dart";

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    if (width >= 1024) return const DesktopUI();
    if (width >= 768) return const TabletUI();
    return const MobileUI();
  }
}
