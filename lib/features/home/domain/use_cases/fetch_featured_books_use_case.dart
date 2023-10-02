import 'package:clean_arch_bookly_app_v1/core/errors/failure.dart';

import 'package:clean_arch_bookly_app_v1/features/home/domain/entities/book_entitiy.dart';

import 'package:dartz/dartz.dart';

import '../repos/home_repo.dart';

class FetchFeaturedBooksUseCase {
  final HomeRepo homeRepo;

  FetchFeaturedBooksUseCase(this.homeRepo);
  Future<Either<Failure, List<BookEntity>>> fetchFeaturedBooks() {
    // check permssion
    return homeRepo.fetchFeaturedBooks();
  }
}
