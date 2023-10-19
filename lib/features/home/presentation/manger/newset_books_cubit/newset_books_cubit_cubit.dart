import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'newset_books_cubit_state.dart';

class NewsetBooksCubitCubit extends Cubit<NewsetBooksCubitState> {
  NewsetBooksCubitCubit() : super(NewsetBooksCubitInitial());
}
