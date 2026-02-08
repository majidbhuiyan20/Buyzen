import 'package:buyzen/app/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../view_model/size_selector_provider.dart';

class SizeSelectorRow extends ConsumerWidget {
  const SizeSelectorRow({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final selectedIndex = ref.watch(selectedSizeProvider);

    final sizes = [38, 40, 42, 44, 46, 48];

    return Row(
      children: List.generate(sizes.length, (index) {
        final isSelected = selectedIndex == index;
        return Padding(
          padding: EdgeInsets.only(right: 12.w),
          child: GestureDetector(
            onTap: () {
              ref.read(selectedSizeProvider.notifier).state = index;
            },
            child: Container(
              padding: EdgeInsets.all(8.r),
              decoration: BoxDecoration(
                color: Colors.grey.withAlpha(40),
                borderRadius: BorderRadius.circular(8.r),
                border: Border.all(
                  color: isSelected ? AppColors.themeColor : Colors.transparent,
                  width: 1.5,
                ),
              ),
              child: Text(
                sizes[index].toString(),
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18.sp),
              ),
            ),
          ),
        );
      }),
    );
  }
}
