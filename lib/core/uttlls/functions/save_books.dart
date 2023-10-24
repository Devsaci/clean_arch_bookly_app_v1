// extracted Method saveBooksData
import 'package:hive/hive.dart';

import '../../../constants.dart';
import '../../../features/home/domain/entities/book_entity.dart';

void saveBooksData(List<BookEntity> books, String boxName) {
  var featuredBox = Hive.box<BookEntity>(kFeaturedBox);
  var newestBox = Hive.box<BookEntity>(kNewestBox);
  featuredBox.addAll(books);
  newestBox.addAll(books);
}
