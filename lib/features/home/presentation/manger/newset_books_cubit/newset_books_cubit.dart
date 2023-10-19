import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../../domain/entities/book_entity.dart';

part 'newset_books_state.dart';

class NewsetBooksCubitCubit extends Cubit<NewsetBooksState> {
  NewsetBooksCubitCubit() : super(NewsetBooksCubitInitial());
}
