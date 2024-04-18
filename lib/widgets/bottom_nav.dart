import 'package:flutter/material.dart';
import 'package:flutter_mechine/view/cart_screen.dart';
import 'package:flutter_mechine/view/home_screen.dart';
import 'package:flutter_mechine/view/user.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  var currentIndex = 0;
  dynamic screens = [Home(), Cart(), User()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Color.fromARGB(255, 81, 45, 241),
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_bag_sharp), label: "Cart"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "User")
          ],
          currentIndex: currentIndex,
          onTap: (value) => setState(() {
                currentIndex = value;
              })),
    );
  }
}
