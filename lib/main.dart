import 'package:flutter/material.dart';
import 'package:navigation_bar/pages/dashboard/main_page.dart';
import 'package:navigation_bar/pages/tabbar_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigation',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MainTabbarPage()
    );
  }
}

