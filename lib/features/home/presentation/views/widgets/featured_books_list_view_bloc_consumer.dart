import 'package:clean_arch_bookly_app_v1/features/home/presentation/manger/featured_books_cubit/featured_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../domain/entities/book_entity.dart';
import 'featured_list_view.dart';

class FeatuedBooksListViewBlocConsumer extends StatefulWidget {
  const FeatuedBooksListViewBlocConsumer({super.key});

  @override
  State<FeatuedBooksListViewBlocConsumer> createState() =>
      _FeatuedBooksListViewBlocConsumerState();
}

class _FeatuedBooksListViewBlocConsumerState
    extends State<FeatuedBooksListViewBlocConsumer> {
  List<BookEntity> books = [];
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<FeaturedBooksCubit, FeaturedBooksState>(
      listener: (context, state) {
        if (state is FeaturedBooksSuccess) {
          books.addAll(state.books);
        }
        if (state is FeaturedBooksPaginationFailure) {
          ScaffoldMessenger.of(context).showSnackBar(
            // Extracted Methode buildErrorWidget
            buildErrorWidget(state),
          );
        }
      },
      builder: (context, state) {
        if (state is FeaturedBooksSuccess ||
            state is FeaturedBooksPaginationLoading ||
            state is FeaturedBooksPaginationFailure) {
          return FeaturedBooksListView(
            books: books,
          );
        } else if (state is FeaturedBooksFailure) {
          return Text(state.errMessage);
        } else {
          return const CircularProgressIndicator();
        }
      },
    );
  }

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
}
