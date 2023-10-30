import 'package:clean_arch_bookly_app_v1/features/home/domain/entities/book_entity.dart';
import 'package:flutter/material.dart';

import 'custom_book_ithem.dart';

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({super.key, required this.books});
  final List<BookEntity> books;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .3,
      child: ListView.builder(
        //itemCount: 5,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8),
            child: CustumBookImage(
              image: '',
            ),
          );
        },
      ),
    );
  }
}
