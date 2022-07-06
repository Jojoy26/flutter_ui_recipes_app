import 'package:flutter/material.dart';
import 'package:flutter_recipes/src/core/colors.dart';
import 'package:flutter_recipes/src/widgets/line.dart';
import 'package:google_fonts/google_fonts.dart';

class Heading extends StatelessWidget {
  const Heading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: EdgeInsets.only(left: 12, right: 12),
      sliver: SliverList(
        delegate: SliverChildListDelegate(
          [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'What would you wish \nto cook',
                  style: GoogleFonts.inter(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    color: AppColors.primaryTextColor(),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Line()
              ],
            )
          ],
        ),
      ),
    );
  }
}
