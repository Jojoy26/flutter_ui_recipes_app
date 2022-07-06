import 'package:flutter/material.dart';
import 'package:flutter_recipes/src/core/colors.dart';
import 'package:flutter_recipes/src/modules/home/home_page.dart';
import 'package:flutter_recipes/src/widgets/line.dart';

class BottomContainer extends StatefulWidget {
  const BottomContainer({Key? key}) : super(key: key);

  @override
  State<BottomContainer> createState() => _BottomContainerState();
}

class _BottomContainerState extends State<BottomContainer>
    with TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animationSize;
  late Animation<double> _animationOpacity;
  bool isExpanded = true;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 400),
    );
    _animationSize = Tween<double>(begin: 0.0, end: 1.0).animate(_controller);
    _animationOpacity =
        Tween<double>(begin: 0.0, end: 1.0).animate(_controller);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(milliseconds: 900), () => _controller.forward());
    return SizeTransition(
      sizeFactor: _animationSize,
      child: Container(
        padding: EdgeInsets.all(30),
        height: 280,
        width: double.infinity,
        decoration: BoxDecoration(
          color: AppColors.primaryColor(),
          border: Border.all(color: Colors.grey, width: 1),
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(40),
            topLeft: Radius.circular(40),
          ),
        ),
        child: FadeTransition(
          opacity: _animationOpacity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Wrap(
                direction: Axis.vertical,
                children: [
                  Text(
                    'Give your day \na fresh start',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: AppColors.primaryTextColor(),
                    ),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Line(),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Start cooking whatever you crave',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: AppColors.secondaryTextColor(),
                    ),
                  ),
                ],
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                    minimumSize: Size(140, 50),
                    primary: AppColors.primaryWidgetColor(),
                  ),
                  onPressed: () {
                    _controller.reverse().whenComplete(
                          () => Navigator.of(context).push(
                            PageRouteBuilder(
                              pageBuilder: (context, animation, _) {
                                return HomePage();
                              },
                              opaque: false,
                            ),
                          ),
                        );
                  },
                  child: Text(
                    'Start',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
