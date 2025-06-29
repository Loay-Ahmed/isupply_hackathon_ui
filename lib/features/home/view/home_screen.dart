import "package:flutter/material.dart";

import 'package:isupply_hackathon_ui/features/home/view/desktop_view.dart';
import 'package:isupply_hackathon_ui/features/home/view/mobile_view.dart';
import 'package:isupply_hackathon_ui/features/home/view/tablet_view.dart';

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
