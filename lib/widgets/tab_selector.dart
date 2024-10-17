import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/portfolio_provider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../theme/app_colors.dart';

class TabSelector extends StatelessWidget {
  final List<String> tabs = ['Project', 'Saved', 'Shared', 'Achievement'];
  final PageController pageController;

  TabSelector({required this.pageController, super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<PortfolioProvider>(context);
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Space tabs evenly
          children: List.generate(tabs.length, (index) {
            return _buildTab(context, tabs[index], index == provider.selectedTabIndex, index);
          }),
        ),
        // Adding the grey line below the tabs
        Container(
          height: 1.h,
          color: Colors.grey.shade300,
          width: double.infinity,
        ),
      ],
    );
  }

  Widget _buildTab(BuildContext context, String label, bool isActive, int index) {
    final provider = Provider.of<PortfolioProvider>(context, listen: false);

    return GestureDetector(
      onTap: () {
        provider.setSelectedTab(index); // Update the selected tab
        pageController.jumpToPage(index); // Move to the selected tab in PageView
      },
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.w), // Add padding for spaceEvenly
            child: Text(
              label,
              style: TextStyle(
                color: isActive ? AppColors.primaryColor : AppColors.unselectedTabColor,
                fontSize: 14.sp,
              ),
            ),
          ),
          SizedBox(height: 4.h),
          if (isActive)
            Container(
              height: 2.h,
              width: 60.w, // Customize width for the underline to match design
              color: AppColors.primaryColor,
            ),
        ],
      ),
    );
  }
}
