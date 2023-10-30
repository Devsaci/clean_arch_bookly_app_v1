// extracted Method saveBooksData
import 'package:hive/hive.dart';

import '../../../constants.dart';
import '../../../features/home/domain/entities/book_entity.dart';

void saveFeaturedBooksData(List<BookEntity> books, String boxName) {
  var featuredBox = Hive.box<BookEntity>(kFeaturedBox);
  featuredBox.addAll(books);
}

void saveNewestBooksData(List<BookEntity> books, String boxName) {
  var newestBox = Hive.box<BookEntity>(kNewestBox);
  newestBox.addAll(books);
}
