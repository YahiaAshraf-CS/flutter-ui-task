import 'package:flutter/material.dart';
import 'package:task1_flutter/account_screen.dart';
import 'package:task1_flutter/cart_screen.dart';
import 'package:task1_flutter/explore_screen.dart';
import 'package:task1_flutter/favorite_screen.dart';
import 'package:task1_flutter/home_screen.dart' show HomeScreen;
import 'package:task1_flutter/widget/nav_bar_widgit.dart';



class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    const HomeScreen(),
    const ExploreScreen(),
    const CartScreen(),
    const FavoriteScreen(),
    const AccountScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(index: _currentIndex, children: _screens),
      bottomNavigationBar: CustomBottomNavBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
