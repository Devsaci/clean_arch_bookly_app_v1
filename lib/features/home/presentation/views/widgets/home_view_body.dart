import 'package:clean_arch_bookly_app_v1/constants.dart';
import 'package:clean_arch_bookly_app_v1/core/uttlls/assets.dart';
import 'package:clean_arch_bookly_app_v1/core/uttlls/styles.dart';
import 'package:clean_arch_bookly_app_v1/features/home/presentation/views/widgets/best_seller_list_view_item.dart';
import 'package:flutter/material.dart';

import 'custom_app_bar.dart';
import 'featured_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomAppBar(),
          const FeaturedBooksListView(),
          const SizedBox(height: 20),
          Text(
            "Best Seller",
            style: Styles.textStyle30.copyWith(fontFamily: kGtSectraFine),
          ),
          const SizedBox(height: 20),
          const BestSellerListView(),
        ],
      ),
    );
  }
}



// class FeaturedBooksListView extends StatelessWidget {
//   const FeaturedBooksListView({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       height: MediaQuery.of(context).size.height * .3,
//       child: ListView.builder(
//         itemCount: 5,
//         scrollDirection: Axis.horizontal,
//         itemBuilder: (context, index) => const Padding(
//           padding: EdgeInsets.symmetric(horizontal: 8),
//           child: FeaturedListViewItem(),
//         ),
//       ),
//     );
//   }
// }
