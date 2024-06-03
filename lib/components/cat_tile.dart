import "package:ecommerce/model/cat.dart";
import "package:flutter/material.dart";

class CatTile extends StatelessWidget {

  Cat cat;
  CatTile({super.key, required this.cat});

  
  @override
  Widget build(BuildContext context) {
    return Container(
      
      decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(12),),
      margin: const EdgeInsets.symmetric(horizontal: 20),
      child:  Column(
        children: [
          
          // image of the cat
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(
              scale: .9,
              cat.imagePath,height:400,width:MediaQuery.of(context).size.width,)),

          // cat name 
          Text(cat.name),

          // breedName
          //Text(cat.breed)
        ],
      ),
    );
  }
}
