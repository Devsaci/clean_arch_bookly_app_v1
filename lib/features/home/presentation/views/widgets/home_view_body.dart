import 'package:clean_arch_bookly_app_v1/core/uttlls/assets.dart';
import 'package:flutter/material.dart';

import 'custom_app_bar.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomAppBar(),
        FeaturedBooksListView(),
      ],
    );
  }
}

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      child: Image.asset(AssetsData.testImage),
      // decoration: BoxDecoration(
      //   color: Colors.red,
      //   borderRadius: BorderRadius.circular(16),
      //   image: const DecorationImage(
      //     // fit: BoxFit.fill,
      //     image: AssetImage(
      //       AssetsData.testImage,
      //     ),
      //   ),
      // ),
    );
  }
}
