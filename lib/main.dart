import 'package:day7_task/navigation/bottomNav.dart';
import 'package:day7_task/navigation/drawerNav.dart';
import 'package:day7_task/screens/categories.dart';
import 'package:day7_task/screens/home.dart';
import 'package:day7_task/screens/product_list.dart';
import 'package:day7_task/screens/settings.dart';
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
        title: 'Flutter Demo',
        home: DrawerNavigationDemo());
  }
}
