import 'package:flutter/material.dart';
import 'package:fruit_delivery_app/constants.dart';
import 'package:fruit_delivery_app/screens/products/add_to_basket.dart';
import 'package:fruit_delivery_app/widgets/bottom_food_items.dart';
import 'package:fruit_delivery_app/widgets/chips.dart';
import 'package:fruit_delivery_app/widgets/food_items.dart';
import 'package:fruit_delivery_app/widgets/food_tabs.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 194,
            color: FColors.whiteColor,
            child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 50),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.menu),
                          ),
                          const SizedBox(width: 5),
                          const Text(
                            'Welcome',
                            style: TextStyle(
                              fontSize: 23,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const AddToBasket(),
                            ),
                          );
                        },
                        child: CircleAvatar(
                          backgroundColor: FColors.searchColor,
                          child: const Icon(
                            Icons.shopping_basket_rounded,
                            color: Colors.orange,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 30),
                  Row(
                    children: [
                      SizedBox(
                        width: 250,
                        height: 50,
                        child: TextField(
                          decoration: InputDecoration(
                            prefixIcon: const Icon(Icons.search),
                            hintText: 'Search for fruit salad combos',
                            hintStyle:
                                TextStyle(color: Colors.grey.withOpacity(0.5)),
                            filled: true,
                            fillColor: FColors.kGrey.withOpacity(0.5),
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(7),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 20),
                      Container(
                        width: 35,
                        height: 45,
                        decoration: BoxDecoration(
                            color: FColors.kGrey.withOpacity(0.5),
                            borderRadius: BorderRadius.circular(7)),
                        child: const Icon(Icons.settings),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: const [
                CustomChips(title: "All"),
                CustomChips(title: 'More Chips'),
                CustomChips(title: 'I want more'),
                CustomChips(title: 'What'),
                CustomChips(title: 'Oh noo')
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 25, left: 20),
            child: Text(
              'Recommended Combo',
              style: TextStyle(fontSize: 20),
            ),
          ),
          const Divider(
            color: Colors.red,
            indent: 20,
            endIndent: 100,
            thickness: 2,
          ),
          const SizedBox(height: 20),
          Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    FoodContainer(
                      foodname: 'Som tam',
                      price: 100,
                      avatar: CircleAvatar(
                          radius: 50,
                          // backgroundColor: Colors.white,
                          backgroundImage: FoodImages.somTam
                          //
                          ),
                    ),
                    FoodContainer(
                      foodname: ' Chicken parm',
                      price: 100,
                      avatar: CircleAvatar(
                          radius: 60,
                          // backgroundColor: Colors.white,
                          backgroundImage: FoodImages.chickenParm),
                    ),
                    FoodContainer(
                      foodname: 'Seafood paella',
                      price: 100,
                      avatar: CircleAvatar(
                          radius: 50,
                          // backgroundColor: Colors.white,
                          backgroundImage: FoodImages.seaFoodPealla),
                    ),
                    FoodContainer(
                      foodname: 'Chicken Rice',
                      price: 100,
                      avatar: CircleAvatar(
                          radius: 50,
                          // backgroundColor: Colors.white,
                          backgroundImage: FoodImages.chickenRice
                          //
                          ),
                    ),
                  ],
                ),
              ),
              const FoodTab(),
              const SizedBox(height: 10),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    BottomFoodContainer(
                      foodname: 'Premium Salad',
                      price: 100,
                      avatar: CircleAvatar(
                        radius: 60,
                        // backgroundColor: Colors.white,
                        backgroundImage: BottomFoodImages.salad,
                      ),
                    ),
                    BottomFoodContainer(
                      foodname: 'Strawberry Cake',
                      price: 100,
                      avatar: CircleAvatar(
                        radius: 60,
                        // backgroundColor: Colors.white,
                        backgroundImage: BottomFoodImages.cake,
                      ),
                    ),
                    BottomFoodContainer(
                      foodname: 'Fruit Burger',
                      price: 100,
                      avatar: CircleAvatar(
                        radius: 60,
                        // backgroundColor: Colors.white,
                        backgroundImage: BottomFoodImages.fruitBurger,
                      ),
                    ),
                    BottomFoodContainer(
                      foodname: 'Fruit Salsa',
                      price: 100,
                      avatar: CircleAvatar(
                        radius: 60,
                        // backgroundColor: Colors.white,
                        backgroundImage: BottomFoodImages.fruitSalsa,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
