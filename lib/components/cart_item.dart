import 'package:ecommerce/models/shoe.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/cart.dart';

class CartItem extends StatelessWidget {
  final Shoe shoe;
  const CartItem({super.key,required this.shoe});

  @override
  Widget build(BuildContext context) {
    void removeItemFromCart(){
      Provider.of<Cart>(context,listen: false).removeItemFromCart(shoe);
    }
    return Container(

      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(8)
      ),
      margin: const EdgeInsets.only(bottom: 10),
      child: ListTile(
        leading: Image.asset(shoe.imagePath),
      
        title: Text(shoe.name),
      
        subtitle: Text(shoe.price),

        trailing: IconButton(onPressed: removeItemFromCart , icon: const Icon(Icons.delete,color: Colors.red,)),
      ),
    );
  }
}