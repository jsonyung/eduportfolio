import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'portfolio_provider.dart'; // Import PortfolioProvider to reset search

class MainProvider extends ChangeNotifier {
  int _selectedIndex = 0;

  int get selectedIndex => _selectedIndex;

  // Method to set the selected tab index
  void setSelectedIndex(int index, BuildContext context) {
    _selectedIndex = index;
    notifyListeners();

    // Reset the Portfolio tab when switching to it
    if (_selectedIndex == 1) { // Index 1 is for Portfolio tab
      Provider.of<PortfolioProvider>(context, listen: false).resetProjects();
    }
  }
}
