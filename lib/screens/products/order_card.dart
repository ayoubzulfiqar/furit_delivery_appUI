import 'package:flutter/material.dart';
import 'package:fruit_delivery_app/constants.dart';
import 'package:fruit_delivery_app/screens/products/done_order.dart';

class OrderCard extends StatelessWidget {
  const OrderCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
        child: Container(
          padding: const EdgeInsets.all(20),
          height: 450,
          width: 300,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(10)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Card holder’s name',
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 20),
              TextField(
                decoration: InputDecoration(
                  hintText: 'card holder number',
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
              const Text(
                'Card number',
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 20),
              TextField(
                decoration: InputDecoration(
                  hintText: 'card number',
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
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Date',
                        style: TextStyle(fontSize: 16),
                      ),
                      const SizedBox(height: 20),
                      SizedBox(
                        width: 120,
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'MM/YY',
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
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'CVV',
                        style: TextStyle(fontSize: 16),
                      ),
                      const SizedBox(height: 20),
                      SizedBox(
                        width: 120,
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'MM/YY',
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
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 20),
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
                      builder: (context) => const OrderCompleted(),
                    ),
                  );
                },
                child: const Text(
                  "Complete Order",
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
