import 'package:buyzen/app/app_text_style.dart';
import 'package:buyzen/features/home/view/widgets/home_carousel_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../app/app_colors.dart';
import '../widgets/category_card.dart';
import '../widgets/circle_icon_button.dart';
import '../widgets/product_card_widgets.dart';
import '../widgets/section_header.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _buildAppBar(),
      body: SingleChildScrollView(
        child: Column(
        
          children: [
            SizedBox(height: 16.h,),
            HomeCarouselWidgets(),
            SizedBox(height: 1.h,),
            SectionHeader(title: 'Categories', onTap: () {  },),
            SingleChildScrollView(
              scrollDirection: .horizontal,
              child: SizedBox(
                height: 68.h,
                child: Padding(
                  padding: EdgeInsets.only(left: 16.0),
                  child: Row(
                    children: [
                      CategoryCard(imagePath:"assets/icons/nike.png", onTap: () {  },),
                      SizedBox(width: 16.w,),
                      CategoryCard(imagePath:"assets/icons/puma.png", onTap: () {  },),
                      SizedBox(width: 16.w,),
                      CategoryCard(imagePath:"assets/icons/adidas.png", onTap: () {  },),
                      SizedBox(width: 16.w,),
                      CategoryCard(imagePath:"assets/icons/jordan.png", onTap: () {  },),
                      SizedBox(width: 16.w,),
                      CategoryCard(imagePath:"assets/icons/lining.png", onTap: () {  },),
                      SizedBox(width: 16.w,),
                      CategoryCard(imagePath:"assets/icons/jordan.png", onTap: () {  },),
                    ],
                  ),
                ),
              ),
            ),
            SectionHeader(title: 'Recommendation', onTap: () {  },),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 16.w),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: .spaceBetween,
                    children: [
                      ProductCardWidgets(),
                      SizedBox(width: 12.w,),
                      ProductCardWidgets(),
                    ],
                  ),
                  SizedBox(height: 16.h,),
                  Row(
                    mainAxisAlignment: .spaceBetween,
                    children: [
                      ProductCardWidgets(),
                      SizedBox(width: 12.w,),
                      ProductCardWidgets(),
                    ],
                  ),
                ],
              ),
            ),
        SizedBox(height: 100.h,)
          ],
        ),
      ),
    );
  }


  //Cretae custom AppBar
  AppBar _buildAppBar() {
    return AppBar(
      title: Row(
        children: [
          Icon(Icons.shop_2,color: AppColors.themeColor,size: 28.sp,),
          SizedBox(width: 4.w,),
          Text("BuyZen", style: TextStyle(
            fontWeight: .w800,
            color: AppColors.themeColor,
          ),),
        ],
      ),
      actions: [
        CircleIconButton(icon: Icons.person, onTap: () {  },),
        SizedBox(width: 6.w,),
        CircleIconButton(icon: Icons.call, onTap: () {  },),
        SizedBox(width: 6.w,),
        CircleIconButton(icon: Icons.notifications_active, onTap: () {  },),
        SizedBox(width: 16.w,),
      ],
    );
  }
}








