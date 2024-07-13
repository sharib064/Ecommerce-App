import 'package:ecommerce/models/shoe.dart';
import 'package:flutter/material.dart';

class Cart extends ChangeNotifier{
  List<Shoe> shoeShop = [
    Shoe(
        name: "Runfalcon 3 Black",
        price: "1599",
        description: "description",
        imagePath:
            "lib/images/Runfalcon_3.0_Shoes_Black_HQ3790_01_standard.png"),
    Shoe(
        name: "Stan Smith White",
        price: "1599",
        description: "description",
        imagePath: "lib/images/Stan_Smith_Shoes_White_FX5502_01_standard.png"),
    Shoe(
        name: "Gazelle Blue",
        price: "1599",
        description: "description",
        imagePath:
            "lib/images/Gazelle_Italy_Shoes_Blue_ID3725_01_standard.png"),
    Shoe(
        name: "Samba OG White",
        price: "1599",
        description: "description",
        imagePath: "lib/images/Samba_OG_Shoes_White_B75806_01_standard.png"),
    Shoe(
        name: "Campus (Green)",
        price: "1299",
        description: "description",
        imagePath: "lib/images/5700774150_main.png"),
    Shoe(
        name: "Campus (Black)",
        price: "1299",
        description: "description",
        imagePath: "lib/images/campus-00s-shoes.png"),
  ];
  List<Shoe> userCart=[];
  List<Shoe> getShoeList(){
    return shoeShop;
  }
  List<Shoe> getUserCart(){
    return userCart;
  }
  void addItemToCart(Shoe shoe){
    userCart.add(shoe);
    notifyListeners();
  }
  void removeItemFromCart(Shoe shoe){
    userCart.remove(shoe);
    notifyListeners();
  }
}
