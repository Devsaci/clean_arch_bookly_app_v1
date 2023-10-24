// extracted Method saveBooksData
import 'package:hive/hive.dart';

import '../../../constants.dart';
import '../../../features/home/domain/entities/book_entity.dart';

void saveBooksData(List<BookEntity> books, String boxName) {
  var box = Hive.box<BookEntity>(kFeaturedBox);
  box.addAll(books);
}
