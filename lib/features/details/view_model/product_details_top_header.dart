import 'package:buyzen/features/details/view_model/product_selection_index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../app/app_colors.dart';
class ProductDetailsTopHeader extends StatelessWidget {
  const ProductDetailsTopHeader({
    super.key,
    required PageController pageController,
    required this.images,
    required this.ref,
    required int currentIndex,
  }) : _pageController = pageController, _currentIndex = currentIndex;

  final PageController _pageController;
  final List<String> images;
  final WidgetRef ref;
  final int _currentIndex;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: SizedBox(
            height: 240.h,
            child: Stack(
              children: [
                Container(
                  padding: EdgeInsets.all(20.r),
                  decoration: BoxDecoration(
                    color: Color(0XFF562CB5).withAlpha(20),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: PageView.builder(
                    controller: _pageController,
                    itemCount: images.length,
                    onPageChanged: (index) {
                      ref.read(productSelectionIndex.notifier).state = index;
                    },
                    itemBuilder: (context, index) {
                      return Image.asset(
                        images[index],
                        fit: BoxFit.contain,
                      );
                    },
                  ),
                ),

                // 2️⃣ Small Moving Indicator
                Positioned(
                  bottom: 8,
                  left: 0,
                  right: 0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(images.length, (index) {
                      final _currentIndex = ref.watch(productSelectionIndex);
                      return AnimatedContainer(
                        duration: const Duration(milliseconds: 300),
                        margin: const EdgeInsets.symmetric(horizontal: 4),
                        width: _currentIndex == index ? 16 : 8,
                        height: 8,
                        decoration: BoxDecoration(
                          color: _currentIndex == index
                              ? AppColors.themeColor
                              : Colors.grey.shade400,
                          borderRadius: BorderRadius.circular(4),
                        ),
                      );
                    }),
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 12),
        Center(
          child: SizedBox(
            height: 55,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemCount: images.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    _pageController.animateToPage(
                      index,
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.easeInOut,
                    );
                  },
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 6, vertical: 4),
                    width: 55,
                    height: 55,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: _currentIndex == index
                            ? AppColors.themeColor
                            : Colors.grey.shade200,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Center(
                      child: Image.asset(
                        images[index],
                        width: 35,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}