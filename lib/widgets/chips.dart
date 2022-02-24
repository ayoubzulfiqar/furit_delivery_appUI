import 'package:flutter/material.dart';

class CustomChips extends StatelessWidget {
  final String title;
  const CustomChips({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 16, top: 8, right: 16, bottom: 8),
      margin: const EdgeInsets.all(5),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.1),
              spreadRadius: 2,
              blurRadius: 2,
              // offset: Offset(0, 0),
            ),
          ]),
      child: Center(
        child: Text(
          title,
          style: const TextStyle(color: Colors.black),
        ),
      ),
    );
  }
}
