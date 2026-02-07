import 'package:buyzen/app/app_colors.dart';
import 'package:buyzen/app/app_text_style.dart';
import 'package:buyzen/features/home/view_model/provider.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class HomeCarouselWidgets extends ConsumerStatefulWidget {
  const HomeCarouselWidgets({super.key});

  @override
  ConsumerState<HomeCarouselWidgets> createState() => _HomeCarouselWidgetsState();
}

class _HomeCarouselWidgetsState extends ConsumerState<HomeCarouselWidgets> {
  @override
  Widget build(BuildContext context) {
    final currentIndex = ref.watch(carouselIndexProvider);
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Column(
        children: [
          CarouselSlider(
            options: CarouselOptions(
                height: 180.0,
                viewportFraction: 1,
              onPageChanged: (index, reason){
                  ref.read(carouselIndexProvider.notifier).state = index;
              },
              autoPlay: true

            ),
            items: [1,2,3,4,5].map((i) {
              return Builder(
                builder: (BuildContext context) {
                  return Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.symmetric(horizontal: 5.0),
                      decoration: BoxDecoration(
                          color: AppColors.themeColor,
                              borderRadius: BorderRadius.circular(8.r)
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(16.r),
                        child: Row(
                          mainAxisAlignment: .center,
                          children: [
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: .start,
                                    mainAxisAlignment: .center,
                                    children: [
                                      Text("New collection", style: AppTextStyle.largeTextCarousel,),
                                      Text("Discount 50% for the first transaction",style: AppTextStyle.mediumTextCarousel, ),
                                      SizedBox(height: 8.h,),
                                      Container(
                                        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.circular(16.r),
                                          border: Border.all(color: Colors.grey)
                                        ),
                                        child: Text("Shop Now", style: AppTextStyle.buttonTextStyle,),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(width: 8.w,),
                                Image.asset("assets/images/shoe4.png",width: 140.w,)
                          ],
                        ),
                      )
                  );
                },
              );
            }).toList(),
          ),
          SizedBox(height: 8.h,),
          Row(
            mainAxisAlignment: .center,
            children: [
              for (int i = 0; i < 5; i++)
                  Container(
                    width: 12.w,
                    height: 12.h,
                    margin: EdgeInsets.only(right: 4.w),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: currentIndex == i ? AppColors.themeColor : Colors.grey,
                    ),
                  )
            ],
          )
        ],
      ),
    );
  }
}
