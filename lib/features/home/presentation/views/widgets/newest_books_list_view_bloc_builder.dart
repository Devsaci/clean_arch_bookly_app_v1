import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../manger/newset_books_cubit/newset_books_cubit.dart';
import 'best_seller_list_view.dart';

class BestSellerListViewBlocBuilder extends StatelessWidget {
  const BestSellerListViewBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksState>(
        builder: (context, state) {
      if (state is NewestBooksSuccess) {
        return const BestSellerListView();
      } else if (state is NewestBooksFailure) {
        return Text(state.errMessage);
      } else {
        return const CircularProgressIndicator();
      }
    });
  }
}
