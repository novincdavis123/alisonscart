import 'package:alisonscart/screens/cart_page.dart';
import 'package:alisonscart/screens/categories_page.dart';
import 'package:alisonscart/screens/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent_bottom_nav_bar_v2.dart';
import 'home_page.dart';

class BottomNavPage extends StatelessWidget {
  const BottomNavPage({super.key});

  List<PersistentTabConfig> _tabs() => [
    _tabWidget(const HomePage(), const Icon(Icons.home), "Home"),
    _tabWidget(
      const CategoriesPage(),
      const Icon(Icons.grid_view),
      "Categories",
    ),
    _tabWidget(const CartPage(), const Icon(Icons.shopping_cart), "Cart"),
    _tabWidget(const ProfilePage(), const Icon(Icons.person), "Profile"),
  ];

  PersistentTabConfig _tabWidget(Widget screen, Icon icon, String title) {
    return PersistentTabConfig(
      screen: screen,
      item: ItemConfig(icon: icon, title: title),
    );
  }

  @override
  Widget build(BuildContext context) => PersistentTabView(
    tabs: _tabs(),
    navBarBuilder: (navBarConfig) =>
        Style1BottomNavBar(navBarConfig: navBarConfig),
  );
}
