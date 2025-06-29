import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:isupply_hackathon_ui/core/colors.dart';

class BestInvoice extends StatelessWidget {
  const BestInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: [
              AppColors.darkBlue,
              AppColors.darkBlue,
              AppColors.darkBlue,
              AppColors.darkBlue,
              AppColors.mediumBlue,
            ],
          ),
          border: Border.all(color: AppColors.darkBlue, width: 3),
          borderRadius: BorderRadius.circular(10),
        ),
        width: double.infinity,
        height: 50,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Best Invoices",
              style: GoogleFonts.cairo(
                color: AppColors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Icon(
              Icons.arrow_forward_ios_rounded,
              color: AppColors.white,
              size: 30,
            ),
          ],
        ),
      ),
    );
  }
}
