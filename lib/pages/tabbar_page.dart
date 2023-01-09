import 'package:flutter/material.dart';

import 'package:navigation_bar/pages/dashboard/homepage.dart';
import 'package:navigation_bar/pages/dashboard/settings_page.dart';

import 'dashboard/feed_page.dart';

class MainTabbarPage extends StatefulWidget {
  const MainTabbarPage({super.key});

  @override
  State<MainTabbarPage> createState() => _MainTabbarPageState();
}

class _MainTabbarPageState extends State<MainTabbarPage> {
  int currentPage = 0;
  List<Widget> pages = [
    const Homepage(),
    const SettingsPage(),
    const FeedPage()
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Tabbar Example"),
          bottom: TabBar(
            onTap: (value) {
              currentPage = value;
              setState(() {});
            },
            tabs: [
              Container(
                alignment: Alignment.center,
                height: 30,
                child: Text("Home"),
              ),
              Container(
                alignment: Alignment.center,
                height: 30,
                child: Text("Settings"),
              ),
              Container(
                alignment: Alignment.center,
                height: 30,
                child: Text("Feed"),
              ),
            ],
          ),
        ),
        body: pages[currentPage],
      ),
    );
  }
}
