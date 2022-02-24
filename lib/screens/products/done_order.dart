import 'package:flutter/material.dart';
import 'package:fruit_delivery_app/constants.dart';
import 'package:fruit_delivery_app/screens/products/delivery_status.dart';
import 'package:fruit_delivery_app/screens/products/home_screen.dart';

class OrderCompleted extends StatelessWidget {
  const OrderCompleted({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 80),
            Image.asset("image/completed.png"),
            const SizedBox(height: 20),
            const Text(
              'Order Taken',
              style: TextStyle(fontSize: 37),
            ),
            const SizedBox(height: 5),
            const Text(
              'Your order have been taken and is\nbeing attended to',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 17),
            ),
            const SizedBox(height: 40),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                elevation: 0,
                primary: FColors.kOrange,
                side: BorderSide.none,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                fixedSize: const Size(300, 56),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const DeliveryStatus(),
                  ),
                );
              },
              child: const Text(
                "Track order",
                style: TextStyle(fontSize: 20),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                elevation: 0,
                primary: FColors.kOrange.withOpacity(0.1),
                side: BorderSide.none,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                fixedSize: const Size(250, 56),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HomeScreen(),
                  ),
                );
              },
              child: Text(
                "Continue shopping",
                style: TextStyle(fontSize: 18, color: FColors.kOrange),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
