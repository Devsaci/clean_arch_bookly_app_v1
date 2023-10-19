import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../../domain/entities/book_entity.dart';
import '../../../domain/use_cases/fetch_newest_books_use_case.dart';

part 'newset_books_state.dart';

class NewestBooksCubit extends Cubit<NewestBooksState> {
  NewestBooksCubit(this.fetchNewestdBooksUseCase) : super(NewestBooksInitial());
  final FetchNewestdBooksUseCase fetchNewestdBooksUseCase;
  Future<void> fetchNewestBooks() async {
    emit(NewestBooksLoading());
    await fetchNewestdBooksUseCase.call();
  }
}
