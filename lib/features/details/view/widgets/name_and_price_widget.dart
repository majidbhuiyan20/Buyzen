import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NameAndPriceWidget extends StatelessWidget {
  const NameAndPriceWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: .start,
            children: [
              Text("Nike Lebron 8", style: TextStyle(fontWeight: .w700, fontSize: 18.sp),),
              SizedBox(height: 4.h,),
              Text("About shoe", style: TextStyle(color: Colors.grey.withAlpha(200)),),
            ],
          ),
          Spacer(),
          Text("\$129.00", style: TextStyle(fontWeight: .w700, fontSize: 18.sp),)
        ],
      ),
    );
  }
}