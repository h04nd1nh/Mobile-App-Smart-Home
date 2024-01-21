import 'package:flutter/material.dart';

import 'package:google_nav_bar/google_nav_bar.dart';
import '../pages/home_page/home_page.dart';
import '../pages/device_page/device_page.dart';

class BottomTabBar extends StatefulWidget {
  const BottomTabBar({super.key});

  @override
  State<BottomTabBar> createState() => _BottomTabBar();
}

class _BottomTabBar extends State<BottomTabBar> {
  int indexPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(16)),
          color: Color(0xFFFFFFFF),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          child: GNav(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            backgroundColor: const Color(0xFFFFFFFF),
            tabBackgroundColor: const Color(0xFF4C7380),
            activeColor: const Color(0xFFFFFFFF),
            padding: const EdgeInsets.all(16),
            gap: 8,
            onTabChange: (index) => {
              setState(() {
                indexPage = index;
              })
            },
            tabs: const [
              GButton(
                icon: Icons.home,
                text: 'Home',
              ),
              GButton(
                icon: Icons.assignment_rounded,
                text: 'Device',
              ),
            ],
          ),
        ),
      ),
      body: IndexedStack(
        index: indexPage,
        children: const [
          HomePage(),
          DevicePage(),
        ],
      ),
    );
  }
}
