import 'package:flutter/material.dart';
import 'package:fruit_delivery_app/constants.dart';
import 'package:fruit_delivery_app/screens/products/home_screen.dart';

class UserBasket extends StatefulWidget {
  const UserBasket({Key? key}) : super(key: key);

  @override
  State<UserBasket> createState() => _UserBasketState();
}

class _UserBasketState extends State<UserBasket> {
  TextEditingController firstname = TextEditingController();
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
              child: Image.asset("image/basket2.png", width: 301, height: 260),
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
                "image/shadowtwo.png",
                width: 300,
              ),
            ),
          ],
        ),
      );
    }

    Widget _bottomContainer() {
      return Padding(
        padding: const EdgeInsets.only(top: 50, left: 20, right: 20),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "What is your firstname?",
              // textAlign: TextAlign.left,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            const SizedBox(height: 40),
            TextField(
              controller: firstname,
              decoration: const InputDecoration(
                filled: true,
                disabledBorder: InputBorder.none,
                hintText: 'name',
                hintStyle: TextStyle(color: Colors.grey),
                border: InputBorder.none,
              ),
            ),
            const SizedBox(height: 25),
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
                    builder: (context) => const HomeScreen(),
                  ),
                );
              },
              child: const Text(
                "Start Ordering",
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
          SingleChildScrollView(
            child: Expanded(flex: 1, child: _bottomContainer()),
          ),
        ],
      ),
    );
  }
}
