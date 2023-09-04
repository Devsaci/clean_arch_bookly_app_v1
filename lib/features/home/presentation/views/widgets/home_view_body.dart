import 'package:clean_arch_bookly_app_v1/core/uttlls/styles.dart';
import 'package:flutter/material.dart';

import 'custom_app_bar.dart';
import 'custom_book_item.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(),
          FeaturedBooksListView(),
          Text(
            "Best Seller",
            style: Styles.titleMedium,
          )
        ],
      ),
    );
  }
}

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .3,
      child: ListView.builder(
        itemCount: 5,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => const Padding(
          padding: EdgeInsets.symmetric(horizontal: 8),
          child: FeaturedListViewItem(),
        ),
      ),
    );
  }
}
