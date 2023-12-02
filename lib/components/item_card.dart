import 'package:flutter/material.dart';

class ItemCard2 extends StatelessWidget {
  const ItemCard2({super.key, required this.title, required this.price});
  final String title;
  final String price;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Text(title),
          Text(price),
        ],
      ),
    );
  }
}
