import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'newset_books_state.dart';

class NewsetBooksCubitCubit extends Cubit<NewsetBooksState> {
  NewsetBooksCubitCubit() : super(NewsetBooksCubitInitial());
}
