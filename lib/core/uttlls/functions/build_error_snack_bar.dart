import 'package:flutter/material.dart';

import '../../../features/home/presentation/manger/featured_books_cubit/featured_books_cubit.dart';

SnackBar buildErrorWidget(FeaturedBooksPaginationFailure state) {
  return SnackBar(
    duration: const Duration(seconds: 4),
    content: Text(state.errMessage),
    backgroundColor: Colors.yellowAccent,
    action: SnackBarAction(
      label: 'RETRY',
      onPressed: () {
        // Place your error-handling function here.
      },
    ),
  );
}
