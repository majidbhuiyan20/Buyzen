import 'package:buyzen/app/app_colors.dart';
import 'package:buyzen/features/details/view/widgets/size_selector_row.dart';
import 'package:buyzen/features/details/view_model/product_selection_index.dart';
import 'package:buyzen/features/home/view/widgets/section_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widgets/cart_to_action_widget.dart';
import '../widgets/name_and_price_widget.dart';
import '../widgets/product_details_top_header.dart';

class ProductDetailsScreen extends ConsumerStatefulWidget {
  const ProductDetailsScreen({super.key});

  @override
  ConsumerState<ProductDetailsScreen> createState() =>
      _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends ConsumerState<ProductDetailsScreen> {
  final PageController _pageController = PageController();

  final List<String> images = [
    "assets/images/shoe2.png",
    "assets/images/shoe3.png",
    "assets/images/shoe4.png",
    "assets/images/shoe4.png",
    "assets/images/shoe4.png",
    "assets/images/shoe4.png",
    "assets/images/shoe4.png",
  ];

  @override
  Widget build(BuildContext context) {
    final _currentIndex = ref.watch(productSelectionIndex);

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          "Details",
          style: TextStyle(fontWeight: FontWeight.w500),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 12),
            child: CircleAvatar(child: Icon(Icons.favorite_outline)),
          ),
        ],
      ),
      body: Stack(
        children: [
          // Main scrollable content
          SingleChildScrollView(
            padding: EdgeInsets.only(bottom: 100.h), // leave space for floating row
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 16.h),
                ProductDetailsTopHeader(
                  pageController: _pageController,
                  images: images,
                  ref: ref,
                  currentIndex: _currentIndex,
                ),
                SizedBox(height: 16.h),
                NameAndPriceWidget(),
                SizedBox(height: 4.h),
                SectionHeader(
                  title: "Select Size",
                  onTap: () {},
                  onTapText: "Size Chart",
                ),
                SizedBox(height: 4.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [SizeSelectorRow()],
                ),
                SizedBox(height: 16.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  child: Text(
                    "Nike shoes are athletic footwear known for innovation, style, and performance, often featuring cutting-edge technologies like the Air cushioning system. They are designed for a wide range of sports and casual wear, embodying an inspirational and competitive brand personality captured by the iconic ",
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey,
                    ),
                  ),
                ),
                SizedBox(height: 40.h),
              ],
            ),
          ),
          CartToActionWidgets(),
        ],
      ),
    );
  }
}


