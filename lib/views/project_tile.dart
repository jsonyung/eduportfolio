import 'package:eduportfolio/res/font_res.dart';
import 'package:flutter/material.dart';
import '../models/project_model.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../theme/app_colors.dart';

class ProjectTile extends StatelessWidget {
  final Project project;

  const ProjectTile({super.key, required this.project});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      margin: EdgeInsets.symmetric(vertical: 8.h, horizontal: 16.w),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.r),
      ),
      elevation: 2,
      child: SizedBox(
        height: 120.h, // Adjusted this height as needed
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,  // Ensure items align vertically in the center
          children: [
            // Image with rounded corners on top-left and bottom-left
            ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12.r),
                bottomLeft: Radius.circular(12.r),
              ),
              child: Image.asset(
                project.imageUrl,
                width: 120.w,
                height: double.infinity, // Stretch to fill the card height
                fit: BoxFit.cover, // Ensure image covers full area
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 12.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center, // Center text vertically
                  children: [
                    // Project title
                    Text(
                      project.title,
                      style: TextStyle(
                        fontFamily: FontRes.ROBOTO_MEDIUM,
                        fontSize: 12.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 4.h),
                    // Project subject
                    Text(
                      project.subject,
                      style: TextStyle(
                        fontSize: 10.sp,
                        color: Colors.black54,
                      ),
                    ),
                    SizedBox(height: 2.h),
                    // Project author
                    Text(
                      project.author,
                      style: TextStyle(
                        fontFamily: FontRes.ROBOTO_MEDIUM,
                        fontSize: 8.sp,
                        color: Colors.black45,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 16.w),
              child: Container(
                width: 35.w,
                height: 25.h,
                decoration: BoxDecoration(
                  gradient: AppColors.bgGradeColor, // Applied the linear gradient
                  borderRadius: BorderRadius.circular(8.r),
                ),
                alignment: Alignment.center,  // Centered the badge text inside the container
                child: Text(
                  project.badge,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
