import 'package:clean_arch_bookly_app_v1/features/home/domain/entities/book_entitiy.dart';

abstract class HomeLocalDataSource {
  List<BookEntity> fetchFeaturedBooks();
}

class HomeLocalDataSourceImpl extends HomeLocalDataSource {
  @override
  List<BookEntity> fetchFeaturedBooks() {
    // TODO: implement fetchFeaturedBooks
    throw UnimplementedError();
  }
}
