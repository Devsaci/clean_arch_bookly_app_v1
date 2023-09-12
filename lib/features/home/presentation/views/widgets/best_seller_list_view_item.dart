import 'package:clean_arch_bookly_app_v1/constants.dart';
import 'package:clean_arch_bookly_app_v1/core/uttlls/assets.dart';
import 'package:clean_arch_bookly_app_v1/core/uttlls/styles.dart';
import 'package:flutter/material.dart';

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
            crossAxisAlignment: CrossAxisAlignment.start,
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
              Row(
                children: [
                  Text(
                    "19.99 euro",
                    style: Styles.textStyle20
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                  const Spacer(),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
