import 'package:eduportfolio/res/font_res.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../theme/app_colors.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  const CustomAppBar({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        title,
        style: TextStyle(fontSize: 18.sp, color: Colors.black,fontFamily: FontRes.ROBOTO_MEDIUM), // Responsive font size, black text for contrast
      ),
      backgroundColor: Colors.white, // Constant white background
      elevation: 0, // Remove shadow to keep it clean
      scrolledUnderElevation: 0, // No elevation on scroll
      actions: [
        IconButton(
          icon: Icon(Icons.shopping_bag, size: 24.sp, color: AppColors.primaryColor), // Responsive icon size
          onPressed: () {
            // Handle shopping bag action
          },
        ),
        IconButton(
          icon: Icon(Icons.notifications, size: 24.sp, color: AppColors.primaryColor), // Responsive icon size
          onPressed: () {
            // Handle notifications action
          },
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
