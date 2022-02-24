import 'package:flutter/material.dart';
import 'package:fruit_delivery_app/constants.dart';
import 'package:fruit_delivery_app/screens/splash/basket.dart';

class Logo extends StatefulWidget {
  const Logo({Key? key}) : super(key: key);

  @override
  State<Logo> createState() => _LogoState();
}

class _LogoState extends State<Logo> with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  @override
  void initState() {
    super.initState();
    animationController =
        AnimationController(duration: const Duration(seconds: 5), vsync: this)
          ..forward()
          ..addStatusListener((status) {
            if (status == AnimationStatus.completed) {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Basket(),
                  ));
            }
          });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: FColors.whiteColor,
      body: AnimatedBuilder(
        animation: animationController,
        builder: (context, _) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  "image/logo.png",
                  width: 113,
                  height: 165,
                ),
                const SizedBox(height: 10),
                Container(
                  height: 40.0,
                  width: 184.0,
                  decoration: BoxDecoration(
                    color: FColors.kOrange,
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(16),
                      bottomRight: Radius.circular(16),
                    ),
                  ),
                  child: Center(
                    child: Image.asset('image/fruithub.png'),
                  ),
                ),
                // Text(animationController.lastElapsedDuration!.inSeconds
                //     .toString())
              ],
            ),
          );
        },
      ),
    );
  }
}
