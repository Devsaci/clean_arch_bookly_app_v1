import 'package:clean_arch_bookly_app_v1/core/widgers/custom_button.dart';
import 'package:clean_arch_bookly_app_v1/features/home/presentation/views/widgets/custom_book_ithem.dart';
import 'package:flutter/material.dart';

import '../../../../../core/uttlls/styles.dart';
import 'book_rating.dart';
import 'custom_book_details_app_bar.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          const CustomBookDetailsAppBar(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * .14),
            child: const CustumBookImage(),
          ),
          const SizedBox(height: 43),
          Text(
            'The Jungle Book',
            style: Styles.textStyle30.copyWith(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 6),
          Opacity(
            opacity: .7,
            child: Text(
              'Rudyard Kipling',
              style: Styles.textStyle18.copyWith(
                  fontStyle: FontStyle.italic, fontWeight: FontWeight.w500),
            ),
          ),
          const SizedBox(height: 18),
          const BookRating(
            mainAxisAlignment: MainAxisAlignment.center,
          ),
          const SizedBox(height: 37),
          const BooksAction(),
        ],
      ),
    );
  }
}

class BooksAction extends StatelessWidget {
  const BooksAction({super.key});
  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: CustomButton(
            backgroundColor: Colors.white,
            textColor: Colors.black,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(12),
              bottomLeft: Radius.circular(12),
            ),
          ),
        ),
        Expanded(
          child: CustomButton(
            backgroundColor: Color.fromARGB(255, 201, 157, 23),
            textColor: Colors.white,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(12),
              bottomRight: Radius.circular(12),
            ),
          ),
        ),
      ],
    );
  }
}
