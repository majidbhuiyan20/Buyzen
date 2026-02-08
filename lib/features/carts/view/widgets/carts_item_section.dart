import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'inc_and_dec_widget.dart';
class CratItemSection extends StatelessWidget {
  const CratItemSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.r),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 60.h,
            width: 60.w,
            padding: EdgeInsets.all(6.r),
            decoration: BoxDecoration(
              color: Colors.grey.withAlpha(40),
              borderRadius: BorderRadius.circular(8.r),
            ),
            child: Image.asset("assets/images/shoe3.png"),
          ),

          SizedBox(width: 12.w),

          // Product Details
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Name, Size & Delete
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Nike Lebron 8",
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 16.sp,
                            ),
                          ),
                          Text(
                            "Size: 42",
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 12.sp,
                              color: Colors.grey[700],
                            ),
                          ),
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        // TODO: Delete item
                      },
                      child: Icon(
                        Icons.delete,
                        color: Colors.redAccent,
                        size: 24.sp,
                      ),
                    ),
                  ],
                ),

                Row(
                  children: [
                    Text(
                      "\$120",
                      style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Spacer(),

                    // Remove Button
                    IncAndDecSection(),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}