import 'package:flutter/material.dart';
import 'package:fruit_delivery_app/constants.dart';

class BottomFoodContainer extends StatelessWidget {
  final int? price;
  final String foodname;
  final CircleAvatar? avatar;
  const BottomFoodContainer(
      {Key? key, this.price, required this.foodname, this.avatar})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 15, right: 10),
      width: 140,
      height: 176,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.1),
              spreadRadius: 2,
              blurRadius: 2,
              // offset: Offset(0, 0),
            ),
          ]),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 5, right: 10),
            child: Align(
              alignment: Alignment.topRight,
              child: Icon(
                Icons.favorite_border_outlined,
                color: FColors.kOrange,
              ),
            ),
          ),
          Column(
            children: [
              Center(
                child: Container(
                  height: 73,
                  width: 73,
                  decoration: const BoxDecoration(
                      color: Colors.deepPurple,
                      borderRadius: BorderRadius.all(Radius.circular(50))),
                  // in img pass the food image
                  child: avatar,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                foodname,
                style: const TextStyle(
                    color: Colors.black,
                    // fontWeight: FontWeight.bold,
                    fontSize: 16),
              ),
              // const SizedBox(height: 5),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '₩ ' + price.toString(),
                      style: TextStyle(
                        color: FColors.kOrange,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Container(
                        width: 18,
                        height: 18,
                        decoration: BoxDecoration(
                            color: FColors.kOrange.withOpacity(0.9),
                            borderRadius: BorderRadius.circular(50)),
                        child: const Icon(
                          Icons.add,
                          color: Colors.white,
                          size: 15,
                        ),
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
