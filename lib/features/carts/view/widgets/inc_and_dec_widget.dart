import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../app/app_colors.dart';

class IncAndDecSection extends StatelessWidget {
  const IncAndDecSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: () {
          },
          child: Container(
            padding: EdgeInsets.all(4.r),
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              color: AppColors.themeColor,
              borderRadius: BorderRadius.circular(8.r),
            ),
            child: Icon(Icons.remove, size: 16.sp, color: Colors.white, fontWeight: .w900,),
          ),
        ),

        SizedBox(width: 8.w),
        Text(
          "2",
          style: TextStyle(
            fontSize: 16.sp,
            fontWeight: FontWeight.w600,
          ),
        ),

        SizedBox(width: 8.w),

        // Add Button
        GestureDetector(
          onTap: () {
            // TODO: increase quantity
          },
          child: Container(
            padding: EdgeInsets.all(4.r),
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              color: AppColors.themeColor,
              borderRadius: BorderRadius.circular(8.r),
            ),
            child: Icon(Icons.add, size: 16.sp, color: Colors.white, fontWeight: .w900,),
          ),
        ),
      ],
    );
  }
}