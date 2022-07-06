import 'package:flutter/material.dart';
import 'package:flutter_recipes/src/core/colors.dart';
import 'package:flutter_recipes/src/modules/search/search_page.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      floating: true,
      leading: Container(),
      leadingWidth: 0,
      titleSpacing: 12,
      elevation: 0,
      title: Text(
        'Welcome back',
        style: GoogleFonts.inter(
          color: AppColors.secondaryTextColor(opacity: 0.85),
          fontWeight: FontWeight.w600,
        ),
      ),
      backgroundColor: AppColors.secondaryColor(opacity: 0.1),
      actions: [
        IconButton(
          color: Colors.black,
          onPressed: () {
            Navigator.of(context).push(
              PageRouteBuilder(
                pageBuilder: (context, animation, _) {
                  return SearchPage();
                },
                opaque: false,
              ),
            );
          },
          icon: Icon(Icons.search),
        ),
      ],
    );
  }
}
