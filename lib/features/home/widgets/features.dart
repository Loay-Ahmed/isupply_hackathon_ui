import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../core/colors.dart';

class Features extends StatelessWidget {
  const Features({
    super.key,
    required this.featureName,
    required this.featureDescription,
  });
  final String featureName;
  final String featureDescription;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [
            AppColors.darkBlue,
            AppColors.darkBlue,
            AppColors.mediumBlue,
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Center(
              child: Image.asset(
                "assets/images/${(featureName.toLowerCase()).replaceAll(" ", "_")}.png",
                height: 70,
              ),
            ),
          ),
          // const Spacer(),
          Text(
            featureName,
            style: GoogleFonts.cairo(
              fontSize: 20,
              fontWeight: FontWeight.w800,
              color: AppColors.lightGreen,
            ),
          ),
          Text(
            featureDescription,
            style: GoogleFonts.cairo(
              // fontSize: 16,
              fontWeight: FontWeight.w300,
              color: AppColors.white,
            ),
          ),
        ],
      ),
    );
  }
}
