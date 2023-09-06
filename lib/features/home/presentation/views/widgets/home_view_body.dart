import 'package:clean_arch_bookly_app_v1/constants.dart';
import 'package:clean_arch_bookly_app_v1/core/uttlls/assets.dart';
import 'package:clean_arch_bookly_app_v1/core/uttlls/styles.dart';
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

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 125,
      child: Row(
        children: [
          AspectRatio(
            aspectRatio: 2.8 / 4,
            child: Container(
              //height: MediaQuery.of(context).size.height * .25,
              // width: 100,
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(60),
                image: const DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(
                    AssetsData.testImage,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(width: 30),
          Column(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * .5,
                child: Text(
                  'Harry Potter and the Goblet of Fire',
                  style: Styles.textStyle16.copyWith(fontFamily: kGtSectraFine),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              const SizedBox(height: 3),
              const Text('J.K. Rowling', style: Styles.textStyle14),
              const SizedBox(height: 3),
            ],
          )
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
