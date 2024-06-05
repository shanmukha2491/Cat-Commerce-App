import 'package:ecommerce/Screens/HomePage.dart';
import 'package:ecommerce/Screens/IntroPage.dart';
import 'package:ecommerce/model/cart.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(create: (context)=> Cart(),
    builder: (context, child) => MaterialApp(
      
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/' : (context)=> const IntroPage(),
        'homePage': (context)=> HomePage(),

      },
    ),);
  }
}
