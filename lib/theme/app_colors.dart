import 'package:flutter/material.dart';

class AppColors {
  static const Color primaryColor = Color(0xFFDF5532);
  static const Color hintTextColor = Color(0xFF9E95A2);
  static const Color unselectedTabColor = Color(0xFF303030);
  static const Color unselectedBottomTabColor = Color(0xFFD6D1D5);

  // Defined the linear gradient for the badge
  static const LinearGradient bgGradeColor = LinearGradient(
    colors: [Color(0xFFF39519), Color(0xFFFFCD67)],
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
  );

  // Generate a swatch based on the primary color
  static const MaterialColor primarySwatch = MaterialColor(
    _primaryValue,
    <int, Color>{
      50: Color(0xFFFFEAE5),
      100: Color(0xFFFFCABB),
      200: Color(0xFFFFA991),
      300: Color(0xFFFF8866),
      400: Color(0xFFFF6C46),
      500: Color(_primaryValue), // Same as primary color
      600: Color(0xFFCA3E2A),
      700: Color(0xFFB33525),
      800: Color(0xFF9C2D20),
      900: Color(0xFF7E1F16),
    },
  );

  static const int _primaryValue = 0xFFDF5532;
}
