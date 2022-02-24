import 'package:flutter/material.dart';
import 'package:fruit_delivery_app/constants.dart';

class FoodTab extends StatelessWidget {
  const FoodTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: TabBar(
          isScrollable: true,
          indicatorSize: TabBarIndicatorSize.label,
          indicatorColor: FColors.kOrange,
          labelPadding:
              const EdgeInsets.only(left: 20, right: 10, top: 25, bottom: 5),
          tabs: const [
            Text(
              'Hottest',
              style: TextStyle(color: Colors.grey, fontSize: 19),
            ),
            Text(
              'Popular',
              style: TextStyle(color: Colors.grey, fontSize: 19),
            ),
            Text(
              'New Combo',
              style: TextStyle(color: Colors.grey, fontSize: 19),
            ),
          ],
        ));
  }
}
