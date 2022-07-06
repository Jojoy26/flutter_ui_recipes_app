import 'package:flutter/material.dart';
import 'package:flutter_recipes/src/modules/start/widgets/bottom_container.dart';

class StartPage extends StatelessWidget {
  const StartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              height: double.infinity,
              width: double.infinity,
              child: Image.network(
                'https://i.pinimg.com/564x/cc/a5/e6/cca5e6645d0890b15e4fcdb44223f129.jpg',
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              left: 0,
              child: BottomContainer(),
            ),
          ],
        ),
      ),
    );
  }
}
