import "package:ecommerce/model/cat.dart";
import "package:flutter/material.dart";

class CatTile extends StatelessWidget {
  Cat cat;
  void Function()? onTap;
  CatTile({super.key, required this.cat, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          // image of the cat
          ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                scale: 1,
                cat.imagePath,
                height: 400,
                width: MediaQuery.of(context).size.width,
              )),

          // cat details

          Container(
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(5),
                    bottomRight: Radius.circular(5)),
                color: Colors.blue[400]),
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Row(
                      children: [
                        const Text("Name: ", style: TextStyle(fontSize: 18)),
                        Text(
                          cat.name,
                          style: const TextStyle(fontSize: 18),
                        )
                      ],
                    ),

                    // breedName
                    Row(
                      children: [
                        const Text("Breed: ", style: TextStyle(fontSize: 18)),
                        Text(
                          cat.breed,
                          style: const TextStyle(fontSize: 18),
                        )
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  width: 19,
                ),
                GestureDetector(
                  onTap: onTap,
                  child: Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        color: Colors.white),
                    child: const Text(
                      "Add Me",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                )
              ],
            ),
          ),

          // price of the cat
          // Text("\$${cat.price.toString()}")
        ],
      ),
    );
  }
}
