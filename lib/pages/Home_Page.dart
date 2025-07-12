import 'package:flutter/material.dart';
import 'package:sneakers_shop_app/components/botttom_nav_bar.dart';
import 'package:sneakers_shop_app/pages/cart_page.dart';
import 'package:sneakers_shop_app/pages/shop_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  void navigatebottombar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [const ShopPage(), const CartPage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      bottomNavigationBar: MyButtomNavBar(
        onTabChange: (index) => navigatebottombar(index),
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.menu, color: Colors.black),
        ),
      ),
      body: _pages[_selectedIndex],
    );
  }
}
