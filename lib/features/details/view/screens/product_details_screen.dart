import 'package:buyzen/app/app_colors.dart';
import 'package:buyzen/features/details/view_model/product_selection_index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../view_model/product_details_top_header.dart';
class ProductDetailsScreen extends ConsumerStatefulWidget {
  const ProductDetailsScreen({super.key});

  @override
  ConsumerState<ProductDetailsScreen> createState() => _ProductDetailsScreenState();
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
        title: const Text(
          "Details",
          style: TextStyle(fontWeight: FontWeight.w500),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 12),
            child: CircleAvatar(
              child: Icon(Icons.favorite_outline),
            ),
          )
        ],
      ),
      body: Column(
        crossAxisAlignment: .center,
        children: [
          ProductDetailsTopHeader(pageController: _pageController, images: images, ref: ref, currentIndex: _currentIndex)

        ],
      ),
    );
  }
}


