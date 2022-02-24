import 'package:flutter/material.dart';
import 'package:fruit_delivery_app/constants.dart';
import 'package:fruit_delivery_app/screens/products/delivery_card.dart';
import 'package:fruit_delivery_app/screens/products/home_screen.dart';
import 'package:fruit_delivery_app/widgets/food_card.dart';

class MyBasket extends StatelessWidget {
  const MyBasket({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 170,
            color: FColors.kOrange,
            child: Padding(
              padding: const EdgeInsets.only(top: 50, left: 20),
              child: Row(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const HomeScreen(),
                        ),
                      );
                    },
                    child: Container(
                      padding: const EdgeInsets.only(
                          left: 6, top: 6, right: 6, bottom: 6),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(100),
                      ),
                      height: 32,
                      width: 75,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: const [
                          Icon(
                            Icons.arrow_back_ios,
                            size: 15,
                          ),
                          Text('Go back')
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(width: 30),
                  const Text(
                    "My Basket",
                    style: TextStyle(fontSize: 27, color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                FoodCart(
                  foodName: "Fruit Cake",
                  price: 2000,
                  avatar: CircleAvatar(
                    backgroundImage: CartFoodImages.cake,
                  ),
                ),
                FoodCart(
                  foodName: "Fruit Burger",
                  price: 3000,
                  avatar: CircleAvatar(
                    backgroundImage: CartFoodImages.fruitBurger,
                  ),
                ),
                FoodCart(
                  foodName: "Fruit Salsa",
                  price: 1400,
                  avatar: CircleAvatar(
                    backgroundImage: CartFoodImages.fruitSalsa,
                  ),
                ),
                FoodCart(
                  foodName: "Premium Salad",
                  price: 1200,
                  avatar: CircleAvatar(
                    backgroundImage: CartFoodImages.salad,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 90),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Total',
                      style: TextStyle(fontSize: 14, color: Colors.grey),
                    ),
                    Text(
                      "₩ 7,600",
                      style: TextStyle(fontSize: 24, color: FColors.kOrange),
                    ),
                  ],
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    elevation: 0,
                    primary: FColors.kOrange,
                    side: BorderSide.none,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    fixedSize: const Size(199, 56),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const DeliveryCard(),
                      ),
                    );
                  },
                  child: Text(
                    "Checkout",
                    style: TextStyle(fontSize: 18, color: FColors.whiteColor),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
