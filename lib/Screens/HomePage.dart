import 'package:ecommerce/Screens/CartPage.dart';
import 'package:ecommerce/Screens/ShopPage.dart';
import 'package:ecommerce/components/my_bottom_nav.dart';
import 'package:flutter/material.dart';
import "package:flutter/widgets.dart";

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void Function(int)? onTabChange;

  // to keep track of selected bottom nav bar
  int _selectedIndex = 0;

  // method to update our selected index
  void navigationBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  //pages to display
  final List<Widget> pages = [const ShopPage(), const CartPage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: MyBottomNavigationBar(
        onTabChange: (index) => navigationBottomBar(index),
      ),
      backgroundColor: const Color.fromARGB(255, 225, 151, 176),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text("Cat Commerce"),
        leading: Builder(builder: (context)=>

          IconButton(
            onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            icon: Icon(Icons.menu)
            )
        
      ),
      
      ),
      drawer: Drawer(
        child: Column(
          children: [
            DrawerHeader(
              child:  Image.asset("lib/assets/images/carIntropage.png"),
            ),
             Center(
              
              child: Column(
                verticalDirection: VerticalDirection.down,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ListTile(
                    onTap: () {
                        
                      },
                    leading: const Icon(Icons.home),
                    title: const Text("Home"),
                  ),
                  ListTile(
                    onTap: () {
                        
                      },
                    leading: const Icon(Icons.info),
                    title: const Text("About"),
                  ),
                  ListTile(
                    onTap: () {
                        
                      },
                    leading: const Icon(Icons.logout),
                    title: const Text("Logout"),
                  )


                ],
              ),
            )
            
          ],
        ),
      ),
      body: pages[_selectedIndex],
    
    );
  }
}
