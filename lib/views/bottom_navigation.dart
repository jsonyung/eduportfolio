import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../providers/main_provider.dart';
import '../res/assets_res.dart';
import '../theme/app_colors.dart';

class CustomBottomNavigation extends StatelessWidget {
  const CustomBottomNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<MainProvider>(
      builder: (context, mainProvider, child) {
        return Container(
          height: kBottomNavigationBarHeight, // Same height as a normal BottomNavigationBar
          decoration: BoxDecoration(
            color: Colors.white, // Background color of the bottom bar
            boxShadow: const [
              BoxShadow(color: Colors.black12, blurRadius: 10, offset: Offset(0, -1)),
            ],
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.r),
              topRight: Radius.circular(20.r),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _buildNavItem(context, AssetsRes.HOME, "Home", 0, mainProvider),
              _buildNavItem(context, AssetsRes.PORTFOLIO, "Portfolio", 1, mainProvider),
              _buildNavItem(context, AssetsRes.INPUT, "Input", 2, mainProvider),
              _buildNavItem(context, AssetsRes.PROFILE, "Profile", 3, mainProvider),
            ],
          ),
        );
      },
    );
  }

  Widget _buildNavItem(BuildContext context, String svgPath, String label, int index, MainProvider provider) {
    bool isSelected = provider.selectedIndex == index;

    return Flexible(
      child: GestureDetector(
        onTap: () {
          provider.setSelectedIndex(index, context); // Passed the context to handle reset
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // Centers the content
          children: [
            // Line indicator at the top
            Container(
              height: 3.h,
              width: 20.w,
              color: isSelected ? AppColors.primaryColor : Colors.transparent,
            ),
            SizedBox(height: 6.h), // Gap between Line indicator and icon
            SvgPicture.asset(
              svgPath,
              height: 20.sp,
              color: isSelected ? AppColors.primaryColor : AppColors.unselectedBottomTabColor,
            ),
            SizedBox(height: 4.h), // Gap between icon and label
            // Label
            Text(
              label,
              style: TextStyle(
                fontSize: 12.sp,
                color: isSelected ? AppColors.primaryColor : AppColors.unselectedBottomTabColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
