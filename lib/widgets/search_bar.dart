import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../theme/app_colors.dart';

class CustomSearchBar extends StatefulWidget {
  final ValueChanged<String> onSearch; // Added onSearch callback
  final VoidCallback onClear; // Added onClear callback

  const CustomSearchBar({super.key, required this.onSearch, required this.onClear});

  @override
  State<CustomSearchBar> createState() => _CustomSearchBarState();
}

class _CustomSearchBarState extends State<CustomSearchBar> {
  final TextEditingController _controller = TextEditingController();

  void _performSearch() {
    if (_controller.text.isEmpty) {
      widget.onClear(); // Call onClear when text is empty
    } else {
      widget.onSearch(_controller.text);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.r),
          border: Border.all(color: Colors.grey.shade300),
        ),
        child: Row(
          children: [
            Expanded(
              child: TextField(
                controller: _controller,
                decoration: InputDecoration(
                  hintText: 'Search a project',
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.symmetric(horizontal: 16.w),
                ),
                onSubmitted: (value) => _performSearch(),
                onChanged: (value) {
                  if (value.isEmpty) {
                    widget.onClear(); // Clear search when the user clears the input
                  }
                },
              ),
            ),
            GestureDetector(
              onTap: _performSearch,
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 8.w),
                height: 32.h,
                width: 32.h,
                decoration: BoxDecoration(
                  color: AppColors.primaryColor,
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.all(Radius.circular(8.r)),
                ),
                child: Icon(Icons.search, color: Colors.white, size: 18.sp),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
