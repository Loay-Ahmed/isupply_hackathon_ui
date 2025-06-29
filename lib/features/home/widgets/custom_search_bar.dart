import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:isupply_hackathon_ui/core/colors.dart';

class CustomSearchBar extends StatelessWidget {
  // Renamed from SearchBar
  final ValueChanged<String>? onSearch;

  const CustomSearchBar({super.key, this.onSearch});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Row(
        children: [
          Expanded(
            child: SizedBox(
              height: 45,
              child: TextField(
                onChanged: onSearch,
                cursorColor: AppColors.darkBlue,
                decoration: InputDecoration(
                  hintText: "Search for product...",
                  hintStyle: GoogleFonts.cairo(color: AppColors.darkBlue),
                  filled: true,
                  fillColor: AppColors.white,
                  focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: AppColors.white),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      bottomLeft: Radius.circular(20),
                    ),
                  ),
                  enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: AppColors.white),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      bottomLeft: Radius.circular(20),
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            width: 60,
            height: 45,
            child: Material(
              color: AppColors.darkBlue,
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
              child: GestureDetector(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    ),
                    border: Border.all(color: AppColors.white)
                  ),
                  child: const Center(
                    child: Icon(Icons.search, color: AppColors.white),
                  ),
                ),
                onTap: () => onSearch?.call(''),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
