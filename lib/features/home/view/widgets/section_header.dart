import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../app/app_colors.dart';

class SectionHeader extends StatelessWidget {
  const SectionHeader({
    super.key, required this.title, required this.onTap,
  });

  final String title;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 16.w),
      child: Row(
        mainAxisAlignment: .spaceBetween,
        children: [
          Text("Categories", style: TextStyle(fontWeight: .w700, fontSize: 16.sp),),
          TextButton(onPressed: (){}, child: Text("See all", style: TextStyle(color: AppColors.themeColor, fontSize: 14.sp, fontWeight: .w500),))
        ],
      ),
    );
  }
}