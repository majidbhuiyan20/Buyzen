import 'dart:ui';
import 'package:buyzen/app/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextStyle {
  static TextStyle largeTextCarousel = TextStyle(
    fontSize: 18.sp,
    fontWeight: .w700,
    color: Colors.white,
    letterSpacing: 1.2,
  );
  static TextStyle mediumTextCarousel = TextStyle(
    fontSize: 16.sp,
    fontWeight: .w400,
    color: Colors.white,
  );
  static TextStyle buttonTextStyle = TextStyle(
    fontSize: 16.sp,
    fontWeight: .w600,
    color: AppColors.themeColor,
  );
}