import 'package:flutter/material.dart';

class CustomBottomNavBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  const CustomBottomNavBar({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 10,
            offset: const Offset(0, -5),
          ),
        ],
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(15),
          topRight: Radius.circular(15),
        ),
      ),
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(15),
          topRight: Radius.circular(15),
        ),
        child: BottomNavigationBar(
          currentIndex: currentIndex,
          onTap: onTap,
          backgroundColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: const Color(0xff53b175),
          unselectedItemColor: const Color(0xff181725),
          selectedLabelStyle: const TextStyle(
            fontWeight: FontWeight.w600,
            fontFamily: "Gilroy-bold",
            fontSize: 12,
          ),
          unselectedLabelStyle: const TextStyle(
            fontWeight: FontWeight.w600,
            fontFamily: "Gilroy-bold",
            fontSize: 12,
          ),
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.storefront),
              label: "Shop",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.manage_search),
              label: "Explore",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart_outlined),
              label: "Cart",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border),
              label: "Favourite",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_outline),
              label: "Account",
            ),
          ],
        ),
      ),
    );
  }
}
