import 'package:ecommerce/models/shoe.dart';
import 'package:flutter/material.dart';

class Cart extends ChangeNotifier {
  int total = 0;
  List<Shoe> shoeShop = [
    Shoe(
        name: "Runfalcon 3",
        price: 1599,
        description:
            "Cushioned running shoes made in the part with recyled materiled.",
        imagePath:
            "lib/images/Runfalcon_3.0_Shoes_Black_HQ3790_01_standard.png"),
    Shoe(
        name: "Stan Smith",
        price: 999,
        description:
            "Timeless appeal. Effortless style. Everyday versatility..",
        imagePath: "lib/images/Stan_Smith_Shoes_White_FX5502_01_standard.png"),
    Shoe(
        name: "Gazelle Blue",
        price: 789,
        description:
            "Slip into street-smart style with the adidas Gazelle shoes.",
        imagePath:
            "lib/images/Gazelle_Italy_Shoes_Blue_ID3725_01_standard.png"),
    Shoe(
        name: "Samba OG",
        price: 987,
        description:
            "Born on the pitch, the Samba is a timeless icon of street style.",
        imagePath: "lib/images/Samba_OG_Shoes_White_B75806_01_standard.png"),
    Shoe(
        name: "Campus (Green)",
        price: 999,
        description:
            "They're done with a premium leather upper lined with soft fabric.",
        imagePath: "lib/images/5700774150_main.png"),
    Shoe(
        name: "Campus (Black)",
        price: 768,
        description:
            "They're done with a premium leather upper lined with soft fabric.",
        imagePath: "lib/images/campus-00s-shoes.png"),
  ];
  List<Shoe> userCart = [];
  List<Shoe> getShoeList() {
    return shoeShop;
  }

  int getTotalPrice() {
    return total;
  }

  List<Shoe> getUserCart() {
    return userCart;
  }

  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    total += shoe.price;
    notifyListeners();
  }

  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    total -= shoe.price;
    notifyListeners();
  }
}
