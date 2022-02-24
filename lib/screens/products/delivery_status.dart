import 'package:flutter/material.dart';
import 'package:fruit_delivery_app/constants.dart';
import 'package:fruit_delivery_app/widgets/custom_stepper.dart';

class DeliveryStatus extends StatelessWidget {
  const DeliveryStatus({Key? key}) : super(key: key);

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
                    onTap: () {},
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
                    "Delivery Status",
                    style: TextStyle(fontSize: 27, color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
          const CustomStepper()
        ],
      ),
    );
  }
}

// Step(
//                 title: Text('Order Taken'),
//                 content: Container(
//                   color: Colors.red,
//                 ),
//               ),
//               Step(
//                 title: Text('Order is being processed'),
//                 content: Container(
//                   color: Colors.red,
//                 ),
//               ),
//               Step(
//                 title: Text('Order is being delivered'),
//                 content: Container(
//                   color: Colors.red,
//                 ),
//               ),
//               Step(
//                 title: Text('Order Received'),
//                 content: Container(
//                   color: Colors.red,
//                 ),
//               ),