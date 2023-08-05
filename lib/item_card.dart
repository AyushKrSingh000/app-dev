import 'package:flutter/material.dart';

class ItemCard extends StatelessWidget {
  final String title;
  final String price;
  const ItemCard({
    super.key,
    required this.title,
    this.price = "1500/-",
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 300,
      color: Colors.lime,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            title,
            height: 250,
            width: 200,
            fit: BoxFit.fill,
          ),
          const SizedBox(
            height: 20,
          ),
          Text(price),
        ],
      ),
    );
  }
}
