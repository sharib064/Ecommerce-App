import 'package:flutter/material.dart';
import 'package:ecommerce/models/shoe.dart';

class ShowTile extends StatelessWidget {
  final Shoe shoe;
  const ShowTile({super.key, required this.shoe});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 25),
      width: 280,
      decoration: BoxDecoration(
          color: Colors.grey[100], borderRadius: BorderRadius.circular(12)),
      child: Column(
        children: [Image.asset(shoe.imagePath)],
      ),
    );
  }
}
