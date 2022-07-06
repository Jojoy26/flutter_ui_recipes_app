import 'package:flutter/material.dart';
import 'package:flutter_recipes/src/modules/home/widgets/long_food_card.dart';
import 'package:flutter_recipes/src/modules/search/widgets/search_bar.dart';
import 'package:flutter_recipes/src/widgets/wave_transition_animation.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  late TextEditingController _searchController;

  final GlobalKey<WaveTransitionAnimationState> _myKey =
      GlobalKey<WaveTransitionAnimationState>();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _searchController = TextEditingController();
  }

  void backToHome() {
    _myKey.currentState!.controller
        .reverse()
        .whenComplete(() => Navigator.of(context).pop());
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        backToHome();
        return Future.value(false);
      },
      child: WaveTransitionAnimation(
        waveStart: FractionalOffset(1, 0),
        key: _myKey,
        duration: Duration(milliseconds: 600),
        child: Scaffold(
          backgroundColor: Colors.black.withOpacity(0.8),
          body: SafeArea(
            child: Container(
              padding: EdgeInsets.only(left: 15, right: 15, top: 10),
              height: double.infinity,
              child: Column(
                children: [
                  SearchBar(
                    onBackPress: backToHome,
                    onClearPress: () {},
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
