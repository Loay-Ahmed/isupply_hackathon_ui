import 'package:flutter/material.dart';
import 'package:isupply_hackathon_ui/core/colors.dart';

class CustomNavBar extends StatefulWidget {
  const CustomNavBar({super.key});

  @override
  State<CustomNavBar> createState() => _CustomNavBarState();
}

class _CustomNavBarState extends State<CustomNavBar> {
  int position = 1;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20.0, left: 20.0, bottom: 20),
      child: Container(
        width: 300,
        height: 60,
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(30),
        ),
        // padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  position = 0;
                });
              },
              child: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color:
                      position == 0
                          ? AppColors.lightBlue.withAlpha(200)
                          : null,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Icon(
                  position == 0
                      ? Icons.watch_later_rounded
                      : Icons.watch_later_outlined,
                  size: position == 0 ? 35 : 30,
                  color: AppColors.darkBlue,
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  position = 1;
                });
              },
              child: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color:
                      position == 1
                          ? AppColors.lightBlue.withAlpha(200)
                          : null,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Icon(
                  position == 1 ? Icons.home_rounded : Icons.home_outlined,
                  size: position == 1 ? 35 : 30,
                  color: AppColors.darkBlue,
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  position = 2;
                });
              },
              child: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color:
                      position == 2
                          ? AppColors.lightBlue.withAlpha(200)
                          : null,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Icon(
                  position == 2
                      ? Icons.person_rounded
                      : Icons.person_outline_rounded,
                  size: position == 2 ? 35 : 30,
                  color: AppColors.darkBlue,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
