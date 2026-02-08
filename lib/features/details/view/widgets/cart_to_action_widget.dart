import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../app/app_colors.dart';

class CartToActionWidgets extends StatelessWidget {
  const CartToActionWidgets({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 20.h,
      left: 16.w,
      right: 16.w,
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.all(12.r),
            decoration: BoxDecoration(
              color: Colors.grey.withAlpha(40),
              borderRadius: BorderRadius.circular(12.r),
            ),
            child: const Icon(Icons.shopping_cart, color: Colors.black),
          ),

          SizedBox(width: 12.w),


          Expanded(
            child: ElevatedButton(
              onPressed: () {
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.themeColor,
                padding: EdgeInsets.symmetric(vertical: 16.h),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.r),
                ),
              ),
              child: const Text(
                "Buy Now",
                style: TextStyle(fontSize: 16, color: Colors.white, fontWeight: .w700),
              ),
            ),
          ),
        ],
      ),
    );
  }
}