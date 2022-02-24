import 'package:flutter/material.dart';
import 'package:fruit_delivery_app/constants.dart';
import 'package:fruit_delivery_app/screens/products/home_screen.dart';
import 'package:fruit_delivery_app/screens/products/my_basket.dart';
import 'package:fruit_delivery_app/widgets/chips.dart';

class AddToBasket extends StatelessWidget {
  const AddToBasket({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            color: FColors.kOrange,
            width: double.maxFinite,
            height: 350,
            child: Padding(
              padding: const EdgeInsets.only(top: 70, left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
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
                  const SizedBox(height: 20),
                  Center(
                    child: SizedBox(
                      width: 176,
                      height: 176,
                      child: Image.asset("image/plate.png"),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 20, right: 20, left: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Qualite Superieure",
                      style: TextStyle(fontSize: 24),
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Container(
                            width: 32,
                            height: 32,
                            decoration: BoxDecoration(
                                color: FColors.kOrange.withOpacity(0.1),
                                borderRadius: BorderRadius.circular(50)),
                            child: const Icon(
                              Icons.add,
                              color: Colors.orange,
                              size: 20,
                            ),
                          ),
                        ),
                        Text(
                          "1",
                          style: TextStyle(
                            color: FColors.textColor,
                            fontSize: 24,
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Container(
                            width: 32,
                            height: 32,
                            decoration: BoxDecoration(
                                color: FColors.kOrange.withOpacity(0.1),
                                borderRadius: BorderRadius.circular(50)),
                            child: const Icon(
                              Icons.remove,
                              color: Colors.orange,
                              size: 20,
                            ),
                          ),
                        ),
                        const Spacer(),
                        const SizedBox(height: 10),
                        Row(
                          children: [
                            Text(
                              '₩ 2000',
                              style: TextStyle(
                                color: FColors.textColor,
                                fontSize: 24,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    const SizedBox(height: 10),
                    const Divider(),
                    const SizedBox(height: 10),
                    Text(
                      "This combo contains:",
                      style: TextStyle(
                        color: FColors.textColor,
                        fontSize: 18,
                      ),
                    ),
                    Divider(
                      // indent: 100,
                      endIndent: 200,
                      thickness: 2,
                      color: FColors.kOrange,
                    ),
                    Row(
                      children: const [
                        CustomChips(title: "Red Quinoa"),
                        CustomChips(title: "Lime"),
                        CustomChips(title: "Fresh Mint"),
                      ],
                    ),
                    Row(
                      children: const [
                        CustomChips(title: "Potatoes"),
                        CustomChips(title: "Lemon"),
                        CustomChips(title: "Nuggets"),
                      ],
                    ),
                    const Divider(),
                    const SizedBox(height: 5),
                    const Text(
                        "If you are looking for a new fruit salad to eat today,\nquinoa is the perfect brunch for you. make"),
                    const SizedBox(height: 30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 55,
                          height: 54,
                          padding: const EdgeInsets.all(7),
                          decoration: BoxDecoration(
                            color: FColors.cartBox,
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: const Icon(Icons.favorite_outline),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            elevation: 0,
                            primary: FColors.kOrange,
                            side: BorderSide.none,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            fixedSize: const Size(219, 56),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const MyBasket(),
                              ),
                            );
                          },
                          child: Text(
                            "Add To Basket",
                            style: TextStyle(
                                fontSize: 18, color: FColors.whiteColor),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
