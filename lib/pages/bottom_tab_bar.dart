import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import 'home_page/home_page.dart';
import 'data_page/data_page.dart';
import 'action_page/action_page.dart';
import 'profile_page/profile_page.dart';

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
          color: Color(0xFF586AF6),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          child: GNav(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            backgroundColor: const Color(0xFF586AF6),
            tabBackgroundColor: const Color(0xFFFFFFFF),
            color: const Color(0xFFFFFFFF),
            activeColor: const Color(0xFF586AF6),
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
                icon: Icons.data_array,
                text: 'Data',
              ),
              GButton(
                icon: Icons.assignment_rounded,
                text: 'History',
              ),
              GButton(
                icon: Icons.man,
                text: 'Profile',
              ),
            ],
          ),
        ),
      ),
      body: IndexedStack(
        index: indexPage,
        children: const [
          HomePage(),
          DataPage(),
          ActionHistoryPage(),
          ProfilePage(),
        ],
      ),
    );
  }
}
