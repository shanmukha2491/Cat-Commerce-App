import "package:ecommerce/model/cart.dart";
import "package:ecommerce/model/cat.dart";
import "package:flutter/material.dart";
import "package:provider/provider.dart";

class CartTile extends StatefulWidget {
  Cat cat;
  CartTile({super.key, required this.cat});

  @override
  State<CartTile> createState() => _CartTileState();
}

class _CartTileState extends State<CartTile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8), color: Colors.white),
      margin: const EdgeInsets.only(bottom: 10),
      child: ListTile(
        leading: Image.asset(widget.cat.imagePath),
        title: Text(widget.cat.name),
        subtitle: Text(widget.cat.breed),
        trailing: IconButton(
          onPressed: removeItem,
          icon: const Icon(Icons.delete),
          color: Colors.black,
        ),
      ),
    );
  }
  // remove item from cart

  void removeItem() {
    Provider.of<Cart>(context, listen: false).removeItemFromCart(widget.cat);
  }
}
