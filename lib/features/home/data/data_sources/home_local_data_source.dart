import 'package:clean_arch_bookly_app_v1/constants.dart';
import 'package:clean_arch_bookly_app_v1/features/home/domain/entities/book_entity.dart';
import 'package:hive/hive.dart';

abstract class HomeLocalDataSource {
  List<BookEntity> fetchFeaturedBooks({int pageNumber = 0});
  List<BookEntity> fetchNewestBooks();
}

class HomeLocalDataSourceImpl extends HomeLocalDataSource {
  //Box<BookEntity> featuredBox = Hive.box<BookEntity>(kFeaturedBox);
  //Box<BookEntity> newestBox = Hive.box<BookEntity>(kNewestBox);

  @override
  List<BookEntity> fetchFeaturedBooks({int pageNumber = 0}) {
    int startIndex = pageNumber * 10;
    int endIndex = (pageNumber + 1) * 10;
    // implement fetch featured box local data source
    var box = Hive.box<BookEntity>(kFeaturedBox);
    int length = box.values.length;
    if (startIndex >= length || endIndex > length) {
      return [];
    }
    return box.values.toList().sublist(startIndex, endIndex);
    //return featuredBox.values.toList();
  }

  @override
  List<BookEntity> fetchNewestBooks() {
    // implement fetch NewestBox box local data source
    var box = Hive.box<BookEntity>(kNewestBox);
    return box.values.toList();
    //return newestBox.values.toList();
  }
}
