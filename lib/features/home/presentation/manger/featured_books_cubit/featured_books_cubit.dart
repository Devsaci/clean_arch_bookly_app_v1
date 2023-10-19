import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'featured_books_state.dart';

class FeaturedBooksCubitCubit extends Cubit<FeaturedBooksCubitState> {
  FeaturedBooksCubitCubit() : super(FeaturedBooksCubitInitial());
}
