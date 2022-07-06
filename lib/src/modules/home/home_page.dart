import 'package:flutter/material.dart';
import 'package:flutter_recipes/src/core/colors.dart';
import 'package:flutter_recipes/src/modules/home/widgets/breakfast_heading.dart';
import 'package:flutter_recipes/src/modules/home/widgets/breakfast_list.dart';
import 'package:flutter_recipes/src/modules/home/widgets/food_card.dart';
import 'package:flutter_recipes/src/modules/home/widgets/heading.dart';
import 'package:flutter_recipes/src/modules/home/widgets/home_app_bar.dart';
import 'package:flutter_recipes/src/modules/home/widgets/long_food_card.dart';
import 'package:flutter_recipes/src/modules/home/widgets/recomended_food_list.dart';
import 'package:flutter_recipes/src/modules/search/search_page.dart';
import 'package:flutter_recipes/src/widgets/custom_divider.dart';
import 'package:flutter_recipes/src/widgets/line.dart';
import 'package:flutter_recipes/src/widgets/wave_transition_animation.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return WaveTransitionAnimation(
      waveStart: FractionalOffset(0.0, 1.0),
      duration: Duration(milliseconds: 1100),
      child: Scaffold(
        backgroundColor: Color(0xFFEEEEEE),
        body: CustomScrollView(
          slivers: [
            HomeAppBar(),
            Heading(),
            RecomendedFoodList(),
            SliverPadding(
              padding: EdgeInsets.only(left: 12, right: 12),
              sliver: SliverList(
                delegate: SliverChildListDelegate(
                  [
                    CustomDivider(),
                    BreakfastHeading(),
                  ],
                ),
              ),
            ),
            BreakfastList()
          ],
        ),
      ),
    );
  }
}
