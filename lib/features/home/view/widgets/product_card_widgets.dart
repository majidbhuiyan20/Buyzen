import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../app/app_colors.dart';
class ProductCardWidgets extends StatelessWidget {
  const ProductCardWidgets({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 165.w,
          padding: EdgeInsets.all(16.r),
          decoration: BoxDecoration(
            color: Color(0XFF562CB5).withAlpha(20),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(8.r),
              topRight: Radius.circular(8.r),
            ),
          ),
          child: Column(
            children: [
              Row(
                children: [
                  Icon(Icons.favorite_outline_outlined),
                  Spacer(),
                  Text(""),
                ],
              ),

              Image.asset("assets/images/shoe4.png", height: 80,),
            ],
          ),
        ),
        Container(
          width: 165.w,
          padding: EdgeInsets.all(16.r),
          decoration: BoxDecoration(
            color: Colors.white,
            // boxShadow: [
            //   BoxShadow(
            //     color: Colors.black.withOpacity(0.15),
            //     offset: Offset(0, 4),
            //     blurRadius: 6,
            //     spreadRadius: 0,
            //   ),
            // ],
          ),
          child: Column(
            crossAxisAlignment: .start,
            children: [
              Row(
                children: [
                  Text("\$129.00", style: TextStyle(fontWeight: .w700, fontSize: 16.sp, color: AppColors.themeColor),),
                  Spacer(),
                  Wrap(
                    children: [
                      Icon(Icons.star, color: Colors.amber, size: 18.sp,),
                      SizedBox(width: 4.w,),
                      Text("4.9", style: TextStyle(fontWeight: .w600, fontSize: 14.sp),),

                    ],
                  )
                ],
              ),
              Text("Nike Lebron 8", style: TextStyle(fontWeight: .w500, fontSize: 15.sp), overflow: .ellipsis,),

            ],
          ),
        )
      ],
    );
  }
}