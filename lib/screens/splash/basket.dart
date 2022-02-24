import 'package:flutter/material.dart';
import 'package:fruit_delivery_app/constants.dart';
import 'package:fruit_delivery_app/screens/splash/userbasket.dart';

class Basket extends StatelessWidget {
  const Basket({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget _basketContainer() {
      return Container(
        height: 469,
        width: 375,
        color: FColors.kOrange,
        child: Stack(
          children: [
            Positioned(
              top: 155,
              left: 35,
              child: Image.asset("image/basket1.png", width: 301, height: 260),
            ),
            Positioned(
              top: 130,
              left: 270,
              child: Image.asset('image/fruitdrop.png'),
            ),
            Positioned(
              top: 423,
              left: 37,
              child: Image.asset(
                "image/shadowone.png",
                width: 300,
              ),
            ),
          ],
        ),
      );
    }

    Widget _bottomContainer() {
      return Padding(
        padding: const EdgeInsets.only(top: 50, left: 20),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Get The Freshest Fruit Salad Combo",
              // textAlign: TextAlign.left,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            const SizedBox(height: 5),
            Text(
              "We deliver the best and freshest fruit salad in town\nOrder for a combo today!!!",
              style: TextStyle(color: FColors.textColor),
            ),
            const SizedBox(height: 56),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                elevation: 0.0,
                fixedSize: const Size(327, 56),
                primary: FColors.kOrange,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const UserBasket()));
              },
              child: const Text(
                "Let's Continue",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: FColors.whiteColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(flex: 2, child: _basketContainer()),
          Expanded(flex: 1, child: _bottomContainer()),
        ],
      ),
    );
  }
}
