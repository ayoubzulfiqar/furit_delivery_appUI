import 'package:flutter/material.dart';
import 'package:fruit_delivery_app/constants.dart';

class FoodCart extends StatelessWidget {
  final CircleAvatar? avatar;
  final String foodName;
  final int? price;
  const FoodCart({Key? key, this.avatar, required this.foodName, this.price})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            width: 65,
            height: 64,
            padding: const EdgeInsets.all(7),
            decoration: BoxDecoration(
              color: FColors.cartBox,
              borderRadius: BorderRadius.circular(10),
            ),
            child: avatar,
          ),
          const SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                foodName,
                style: TextStyle(
                  color: FColors.kOrange,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              const Text("2 packs"),
              Text(
                '₩ ' + price.toString(),
                style: TextStyle(
                  color: FColors.kOrange.withOpacity(0.7),
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ],
          ),
          const SizedBox(width: 70),
          IconButton(
            onPressed: () {},
            icon: Container(
              width: 24,
              height: 24,
              decoration: BoxDecoration(
                  color: FColors.kOrange.withOpacity(0.7),
                  borderRadius: BorderRadius.circular(50)),
              child: const Icon(
                Icons.remove,
                color: Colors.white,
                size: 15,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
