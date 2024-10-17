import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../res/assets_res.dart';
import '../res/font_res.dart';
import 'main_page.dart';
import '../theme/app_colors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Navigate to MainPage after 3 seconds
    Timer(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => MainPage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor, // Splash screen background color
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Used Container with BoxDecoration to get proper rounded corners
            Container(
              width: 100.w,
              height: 100.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.r), // Properly round the corners
                image: const DecorationImage(
                  image: AssetImage(AssetsRes.LOGO),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 20.h),
            // App name and tagline
            Text(
              'EduPortfolio',
              style: TextStyle(
                fontSize: 32.sp,
                fontFamily: FontRes.ROBOTO_REGULAR,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 10.h),
            Text(
              'Your educational journey, all in one place',
              style: TextStyle(
                fontFamily: FontRes.ROBOTO_REGULAR,
                fontSize: 14.sp,
                color: Colors.white70,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
