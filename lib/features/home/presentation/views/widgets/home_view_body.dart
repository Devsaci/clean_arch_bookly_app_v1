import 'package:clean_arch_bookly_app_v1/constants.dart';

import 'package:clean_arch_bookly_app_v1/core/uttlls/styles.dart';
import 'package:clean_arch_bookly_app_v1/features/home/presentation/views/widgets/best_seller_list_view.dart';
import 'package:flutter/material.dart';

import 'custom_app_bar.dart';

import 'featured_books_list_view_bloc_builder.dart';
import 'featured_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: CustomAppBar(),
              ),
              // Extracted Methode FeatuedBooksListViewBlocBuilder
              const FeatuedBooksListViewBlocBuilder(),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Text(
                  "Best Seller",
                  style: Styles.textStyle30
                      .copyWith(fontFamily: kGtSectraFine, fontSize: 20),
                ),
              ),
              const SizedBox(height: 20),
              //const BestSellerListView(),
            ],
          ),
        ),
        const SliverFillRemaining(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: BestSellerListView(),
          ),
        ),
      ],
    );
  }
}
