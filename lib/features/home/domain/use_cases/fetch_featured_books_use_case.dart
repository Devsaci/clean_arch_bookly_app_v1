import 'package:clean_arch_bookly_app_v1/core/errors/failure.dart';

import 'package:clean_arch_bookly_app_v1/features/home/domain/entities/book_entitiy.dart';

import 'package:dartz/dartz.dart';

import '../repos/home_repo.dart';

class FetchFeaturedBooksUseCase extends UseCase<Type> {
  final HomeRepo homeRepo;

  FetchFeaturedBooksUseCase(this.homeRepo);

  @override
  Future<Either<Failure, Type>> call() {
    // TODO: implement call
    throw UnimplementedError();
  }

  // Future<Either<Failure, List<BookEntity>>> call() {
  //   // check permssion
  //   return homeRepo.fetchFeaturedBooks();
  // }
}

abstract class UseCase<Type> {
  Future<Either<Failure, Type>> call();
}
