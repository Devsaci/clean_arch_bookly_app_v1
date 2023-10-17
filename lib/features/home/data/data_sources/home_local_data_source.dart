import 'package:clean_arch_bookly_app_v1/constants.dart';
import 'package:clean_arch_bookly_app_v1/features/home/domain/entities/book_entity.dart';
import 'package:hive/hive.dart';

abstract class HomeLocalDataSource {
  List<BookEntity> fetchFeaturedBooks();
  List<BookEntity> fetchNewestBooks();
}

class HomeLocalDataSourceImpl extends HomeLocalDataSource {
  // Box<BookEntity> featuredBox = Hive.box<BookEntity>(kFeaturedBox);
  // Box<BookEntity> newestBox = Hive.box<BookEntity>(kNewestBox);

  @override
  List<BookEntity> fetchFeaturedBooks() {
    // implement fetch featured box local data source
    Box<BookEntity> box = Hive.box<BookEntity>(kFeaturedBox);
    return box.values.toList();
  }

  @override
  List<BookEntity> fetchNewestBooks() {
    // implement fetch NewestBox box local data source
    Box<BookEntity> box = Hive.box<BookEntity>(kNewestBox);
    return box.values.toList();
  }
}
