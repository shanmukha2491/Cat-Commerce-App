import "package:ecommerce/components/cart_tile.dart";
import "package:ecommerce/model/cart.dart";
import "package:ecommerce/model/cat.dart";
import "package:flutter/material.dart";
import "package:provider/provider.dart";

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, value, child) => Scaffold(
        backgroundColor: Colors.transparent,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14),
          child: Column(
            children: [
              // heading
              const Text(
                "My Cart",
                textAlign: TextAlign.start,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 14,
              ),

              getWidget(value),
             
            ],
          ),
        ),
      ),
    );
  }

  getWidget(Cart value) {
    if (value.cart.isEmpty) {
      return const Center(
        child: Text("Add cats to take them"),
      );
    } else {
      return Expanded(
        child: ListView.builder(
          itemCount: value.getCart().length,
          itemBuilder: (context, index) {
            Cat individualCat = value.getCart()[index];
            return CartTile(
              cat: individualCat,
            );
          },
        ),
      );
    }
  }
}
