import 'package:ecommerce/components/cat_tile.dart';
import 'package:ecommerce/model/cart.dart';
import 'package:ecommerce/model/cat.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, value, child) => Column(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 12),
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(8)),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Search"),
                Icon(Icons.search),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Center(
              child: Text(
                textAlign: TextAlign.justify,
                "Cats Don't really have owners, they have stuff",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Open-Sans'),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Hot Pics 🔥",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                Text(
                  "See all",
                  style: TextStyle(fontSize: 16, color: Colors.white),
                )
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
                itemCount: 4,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  Cat newCat = value.getShop()[index];
                  // instance of a cat
                  // Cat newCat = Cat(
                  //     age: 2,
                  //     breed: "Meow",
                  //     name: "Chiku",
                  //     price: 23,
                  //     imagePath: 'lib/assets/images/catImage.jpeg');
                  return CatTile(
                    cat: newCat,
                    onTap:()=> addCatToCart(newCat),
                  );
                }),
          )
        ],
      ),
    );
  }

  // adding the cat to cart
  addCatToCart(Cat cat) {
    Provider.of<Cart>(context, listen: false).addItemToCart(cat);

    // alert the user, when cat is added to the cart

  
  
  showDialog(
    context: context,
    builder: (BuildContext context) {
      // Close the dialog after 5 seconds
      Future.delayed(const Duration(seconds: 1), () {
        Navigator.of(context).pop(true);
      });

      return const AlertDialog(
        title: const Text(
          "Added New World",
          textAlign: TextAlign.center,
        ),
        content: const Text('Check your cart'),
      );
    },
  );
}
  }

