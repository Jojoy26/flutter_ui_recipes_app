import 'package:flutter/material.dart';
import 'package:flutter_recipes/src/core/colors.dart';
import 'package:flutter_recipes/src/widgets/line.dart';
import 'package:google_fonts/google_fonts.dart';

class IngredientsHeading extends StatelessWidget {
  const IngredientsHeading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Ingredients',
          style: GoogleFonts.inter(
            fontSize: 21,
            fontWeight: FontWeight.w600,
            color: AppColors.secondaryTextColor(),
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Line(),
      ],
    );
  }
}
