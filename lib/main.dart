import 'package:eduportfolio/providers/main_provider.dart';
import 'package:eduportfolio/providers/portfolio_provider.dart';
import 'package:eduportfolio/res/font_res.dart';
import 'package:eduportfolio/theme/app_colors.dart';
import 'package:eduportfolio/views/main_page.dart';
import 'package:eduportfolio/views/portfolio_screen.dart';
import 'package:eduportfolio/views/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => PortfolioProvider()),
        ChangeNotifierProvider(create: (_) => MainProvider()),
      ],
      child: ScreenUtilInit(
        designSize: Size(375, 812), // Set based on your Figma design (for iPhone X or similar)
        builder: (context, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            home: SplashScreen(),
            theme: ThemeData(
              primarySwatch: AppColors.primarySwatch,
              fontFamily: FontRes.ROBOTO_REGULAR, // Set the default font family

              appBarTheme: const AppBarTheme(
                backgroundColor: Colors.white, // Ensures AppBar stays white
                elevation: 0, // No shadow
                scrolledUnderElevation: 0, // No elevation on scroll
              ),

              textSelectionTheme: TextSelectionThemeData(
                cursorColor: AppColors.primaryColor, // Set cursor color
                selectionColor: AppColors.primaryColor.withOpacity(0.4), // Optional: selection color
                selectionHandleColor: AppColors.primaryColor, // Optional: selection handle color
              ),

              inputDecorationTheme: InputDecorationTheme(
                hintStyle: TextStyle(
                  color: AppColors.hintTextColor, // Set the hint text color
                  fontSize: 14.0.sp, // You can adjust the font size as needed
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
