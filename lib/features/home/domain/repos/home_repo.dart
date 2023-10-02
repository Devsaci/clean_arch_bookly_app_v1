import 'package:clean_arch_bookly_app_v1/features/home/domain/entities/book_entitiy.dart';

abstract class HomeRepo {
  Future<List<BookEntity>> fetchFeaturedBooks();
}
