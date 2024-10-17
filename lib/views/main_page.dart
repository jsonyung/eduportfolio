import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/main_provider.dart';
import 'bottom_navigation.dart';
import 'home_screen.dart';
import 'input_screen.dart';
import 'portfolio_screen.dart';
import 'profile_screen.dart';

class MainPage extends StatelessWidget {
  static final List _pages = [
    const HomeScreen(),
     const PortfolioScreen(),
    const InputScreen(),
    const ProfileScreen(),
  ];

  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<MainProvider>(
        builder: (context, mainProvider, child) {
          return _pages[mainProvider.selectedIndex];
        },
      ),
      bottomNavigationBar: const CustomBottomNavigation(),
    );
  }
}
