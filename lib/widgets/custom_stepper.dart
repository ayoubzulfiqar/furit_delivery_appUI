import 'package:flutter/material.dart';
import 'package:fruit_delivery_app/constants.dart';

class CustomStepper extends StatelessWidget {
  const CustomStepper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50, left: 20, right: 20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                  width: 65,
                  height: 64,
                  padding: const EdgeInsets.all(7),
                  decoration: BoxDecoration(
                    color: FColors.cartBox,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Image.asset("image/badge.png")),
              const Text(
                "Order taken",
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(width: 80),
              const Icon(
                Icons.check_circle,
                color: Colors.lightGreen,
              ),
            ],
          ),
          const SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                  width: 65,
                  height: 64,
                  padding: const EdgeInsets.all(7),
                  decoration: BoxDecoration(
                    color: FColors.cartBox,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Image.asset("image/badge1.png")),
              const Text(
                "Order is being processed",
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(width: 30),
              const Icon(
                Icons.check_circle,
                color: Colors.lightGreen,
              ),
            ],
          ),
          const SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                  width: 65,
                  height: 64,
                  padding: const EdgeInsets.all(7),
                  decoration: BoxDecoration(
                    color: FColors.cartBox,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Image.asset("image/badge3.png")),
              const Text(
                "Order is being delivered",
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(width: 40),
              const Icon(
                Icons.check_circle,
                color: Colors.lightGreen,
              ),
            ],
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Icon(
                  Icons.check_circle,
                  color: Colors.lightGreen,
                  size: 46,
                ),
                SizedBox(width: 20),
                Text(
                  "Order Received",
                  style: TextStyle(fontSize: 16),
                )
              ],
            ),
          ),
          const SizedBox(height: 80),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              elevation: 0,
              primary: FColors.kOrange,
              side: BorderSide.none,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              fixedSize: const Size(300, 56),
            ),
            onPressed: () {},
            child: const Text(
              "Done",
              style: TextStyle(fontSize: 20),
            ),
          ),
        ],
      ),
    );
  }
}
