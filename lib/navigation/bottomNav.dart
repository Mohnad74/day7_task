import 'package:day7_task/screens/categories.dart';
import 'package:day7_task/screens/home.dart';
import 'package:day7_task/screens/product_list.dart';
import 'package:day7_task/screens/settings.dart';
import 'package:flutter/material.dart';

class BottomNavigationBarDemo extends StatefulWidget {
  const BottomNavigationBarDemo({super.key});

  @override
  State<BottomNavigationBarDemo> createState() =>
      _BottomNavigationBarDemoState();
}

class _BottomNavigationBarDemoState extends State<BottomNavigationBarDemo> {
  int _selectedIndex = 0;
  List<Widget> screens = [
    HomePage(),
    ProductListPage(),
    CategoriesPage(),
    SettingPage()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('My App'),
      //   backgroundColor: Colors.amber,
      // ),
      body: screens.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.black,
        currentIndex: _selectedIndex,
        onTap: (clickedItem) {
          setState(() {
            _selectedIndex = clickedItem;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopify_outlined),
            label: 'Products',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            label: 'Categories',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}
