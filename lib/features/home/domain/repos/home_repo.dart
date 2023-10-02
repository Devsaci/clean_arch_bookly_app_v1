import 'package:clean_arch_bookly_app_v1/core/errors/failure.dart';
import 'package:clean_arch_bookly_app_v1/features/home/domain/entities/book_entitiy.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<BookEntity>>> fetchFeaturedBooks();
  Future<List<BookEntity>> fetchNewsetBooks();
}
