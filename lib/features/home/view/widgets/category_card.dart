import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class CategoryCard extends StatelessWidget {
  const CategoryCard({
    super.key, required this.imagePath, required this.onTap,
  });
  final String imagePath;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(8.r),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8.r),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2), // shadow color
              offset: Offset(0, 4), // x and y offset
              blurRadius: 6, // blur effect
              spreadRadius: 1, // optional, makes shadow a bit bigger
            ),
          ],
        ),
        child: Image.asset(imagePath, color: Colors.black, height: 36.h, width: 36.w,),
      ),
    );
  }
}
