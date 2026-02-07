import 'dart:ui';

import 'package:buyzen/app/app_colors.dart';
import 'package:buyzen/features/home/view/screens/home_screen.dart';
import 'package:buyzen/common/main_nav/view_model/main_nav_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NavItem {
  final IconData icon;
  final String label;

  NavItem({required this.icon, required this.label});
}

class MainNavHolderScreen extends ConsumerStatefulWidget {
  const MainNavHolderScreen({super.key});

  @override
  ConsumerState<MainNavHolderScreen> createState() => _MainNavHolderScreenState();
}

class _MainNavHolderScreenState extends ConsumerState<MainNavHolderScreen> {

  final List<NavItem> items = [
    NavItem(icon: Icons.home, label: "Home"),
    NavItem(icon: Icons.dashboard_customize, label: "Dashboard"),
    NavItem(icon: Icons.favorite_outline, label: "Favorites"),
    NavItem(icon: Icons.person_outline, label: "Profile"),
  ];

  @override
  Widget build(BuildContext context) {
    final currentIndex = ref.watch(mainNavProvider);
    final screens = [
      HomeScreen(),
      HomeScreen(),
      HomeScreen(),
      HomeScreen(),
    ];

    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Stack(
        children: [
          screens[currentIndex],

          // Glass-style floating nav
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 24.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16.r),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                    decoration: BoxDecoration(
                      color: AppColors.themeColor, // semi-transparent glass
                      borderRadius: BorderRadius.circular(10.r),
                      border: Border.all(
                        color: Colors.white.withOpacity(0.3),
                        width: 1.5,
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: List.generate(items.length, (index) {
                        final isSelected = currentIndex == index;
                        final item = items[index];

                        return GestureDetector(
                          onTap: () => ref.read(mainNavProvider.notifier).changeItem(index),
                          behavior: HitTestBehavior.opaque,
                          child: AnimatedContainer(
                            duration: const Duration(milliseconds: 300),
                            curve: Curves.easeInOut,
                            padding: EdgeInsets.symmetric(
                              horizontal: isSelected ? 20.w : 12.w,
                              vertical: 12.h,
                            ),
                            decoration: BoxDecoration(
                              color: isSelected
                                  ? Colors.grey.withAlpha(90) // selected pill
                                  : Colors.transparent,
                              borderRadius: BorderRadius.circular(30.r),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Icon(
                                  item.icon,
                                  size: 22.w,
                                  color: isSelected ? Colors.white : Colors.white70,
                                ),
                                if (isSelected) ...[
                                  SizedBox(width: 8.w),
                                  AnimatedOpacity(
                                    opacity: isSelected ? 1.0 : 0.0,
                                    duration: const Duration(milliseconds: 200),
                                    child: Text(
                                      item.label,
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 14.sp,
                                      ),
                                    ),
                                  ),
                                ],
                              ],
                            ),
                          ),
                        );
                      }),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
