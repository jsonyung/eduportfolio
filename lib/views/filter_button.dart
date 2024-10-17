import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../theme/app_colors.dart';

class FilterButton extends StatelessWidget {
  const FilterButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.w),
      child: ElevatedButton.icon(
        onPressed: () {},
        icon: Icon(Icons.filter_list, size: 24.sp,color: Colors.white,),
        label: Text('Filter', style: TextStyle(fontSize: 18.sp,color: Colors.white)),
        style: ElevatedButton.styleFrom(
          elevation: 3,
          backgroundColor: AppColors.primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.r),
          ),
        ),
      ),
    );
  }
}
