import 'package:flutter/material.dart';
import 'package:fruit_delivery_app/constants.dart';
import 'package:fruit_delivery_app/screens/products/order_card.dart';

class DeliveryCard extends StatelessWidget {
  const DeliveryCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(20),
          height: 350,
          width: 350,
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Your delivery address',
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 20),
              TextField(
                decoration: InputDecoration(
                  hintText: 'delivery address',
                  hintStyle: TextStyle(color: Colors.grey.withOpacity(0.5)),
                  filled: true,
                  fillColor: FColors.kGrey.withOpacity(0.5),
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(7),
                  ),
                ),
              ),
              const SizedBox(height: 30),
              const Text(
                'Number we can call',
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 20),
              TextField(
                decoration: InputDecoration(
                  hintText: 'number',
                  hintStyle: TextStyle(color: Colors.grey.withOpacity(0.5)),
                  filled: true,
                  fillColor: FColors.kGrey.withOpacity(0.5),
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(7),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 136,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        elevation: 0,
                        primary: FColors.kOrange.withOpacity(0.1),
                        side: BorderSide.none,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        fixedSize: const Size(250, 56),
                      ),
                      onPressed: () {},
                      child: Text(
                        "Pay on delivery",
                        style: TextStyle(fontSize: 18, color: FColors.kOrange),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  SizedBox(
                    width: 136,
                    child: ElevatedButton(
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
                            builder: (context) => const OrderCard(),
                          ),
                        );
                      },
                      child: Text(
                        "Pay with card",
                        style: TextStyle(fontSize: 18, color: FColors.kOrange),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
