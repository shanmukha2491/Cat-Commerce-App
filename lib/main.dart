import 'package:ecommerce/Screens/HomePage.dart';
import 'package:ecommerce/Screens/IntroPage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/' : (context)=> const IntroPage(),
        'homePage': (context)=> HomePage(),

      },
    );
  }
}
