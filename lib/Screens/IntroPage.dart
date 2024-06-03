import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 24,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset('lib/assets/images/carIntropage.png'),
            ),
            const SizedBox(
              height: 28,
            ),
            const Center(
              child:  Text(
                textAlign: TextAlign.justify,
                "\"Cats Choose Us; \nwe don't own them \"",
                style: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Open-Sans'),
              ),
            ),
            const SizedBox(
              height: 48,
            ),
            GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, "homePage");
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.pink[200],
                  ),
                  padding: const EdgeInsets.all(20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    Image.asset(
                      'lib/assets/images/cat_paw.png',
                      scale: 0.9,
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    const Center(
                        child: Text(
                      "Enter Meow World",
                      
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      color: Colors.white, fontSize: 24,),
                    ))
                  ]),
                ))
          ],
        ),
      ),
    ));
  }
}
