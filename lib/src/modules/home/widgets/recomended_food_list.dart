import 'package:flutter/material.dart';
import 'package:flutter_recipes/src/modules/home/widgets/food_card.dart';

class RecomendedFoodList extends StatelessWidget {
  const RecomendedFoodList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        height: 290,
        child: ListView.builder(
          shrinkWrap: true,
          padding: EdgeInsets.only(left: 12, right: 12),
          itemCount: 10,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Center(
              child: Container(
                margin: EdgeInsets.only(left: index != 0 ? 15 : 0),
                child: FoodCard(),
              ),
            );
          },
        ),
      ),
    );
  }
}
