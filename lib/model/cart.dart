import 'package:ecommerce/model/cat.dart';
import 'package:flutter/material.dart';

class Cart extends ChangeNotifier {
  // list of cats in the shop
  List<Cat> shopCats = [
    Cat(
        age: 3,
        breed: "Ginger",
        name: "Chinnu",
        price: 45,
        imagePath: "lib/assets/images/catImage1.jpeg"),
    Cat(
        age: 2,
        breed: "Persian",
        name: "Cattie",
        price: 56,
        imagePath: "lib/assets/images/catImage2.jpeg"),
    Cat(
        age: 4,
        breed: "Burmmese",
        name: "Brim",
        price: 67,
        imagePath: "lib/assets/images/catImage3.jpeg"),
    Cat(
        age: 5,
        breed: "Scottish Fols",
        name: "Molly",
        price: 34,
        imagePath: "lib/assets/images/catImage4.jpeg"),
    Cat(
        age: 3,
        breed: "Ragdoll",
        name: "Daisy",
        price: 23,
        imagePath: "lib/assets/images/catImage5.jpeg"),
    Cat(
        age: 7,
        breed: "Siamese cat",
        name: "Lily",
        price: 12,
        imagePath: "lib/assets/images/catImage6.jpeg"),
  ];

  // list of cats added to the cart
  List<Cat> cart = [];

  // get cat to shop
  List<Cat> getShop() {
    return shopCats;
  }

  // get cat to cart
  List<Cat> getCart() {
    return cart;
  }

  // method to add cat to the cart
  void addItemToCart(Cat cat) {
    cart.add(cat);
    notifyListeners();
  }

  void removeItemFromCart(Cat cat) {
    cart.remove(cat);
    notifyListeners();
  }
}
