import 'package:clean_arch_bookly_app_v1/constants.dart';

import 'package:clean_arch_bookly_app_v1/core/uttlls/styles.dart';
import 'package:clean_arch_bookly_app_v1/features/home/presentation/views/widgets/best_seller_list_view_item.dart';
import 'package:flutter/material.dart';

import 'custom_app_bar.dart';
import 'featured_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CustomAppBar(),
                const FeaturedBooksListView(),
                const SizedBox(height: 20),
                Text(
                  "Best Seller",
                  style: Styles.textStyle30
                      .copyWith(fontFamily: kGtSectraFine, fontSize: 20),
                ),
                const SizedBox(height: 20),
                //const BestSellerListView(),
              ],
            ),
          ),
        )
      ],
    );
  }
}

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        padding: EdgeInsets.zero,
        itemCount: 10,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: BestSellerListViewItem(),
          );
        },
      ),
    );
  }
}
