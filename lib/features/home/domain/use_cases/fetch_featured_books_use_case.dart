import 'package:clean_arch_bookly_app_v1/core/errors/failure.dart';

import 'package:clean_arch_bookly_app_v1/features/home/domain/entities/book_entity.dart';

import 'package:dartz/dartz.dart';

import '../../../../core/use_case/use_case.dart';
import '../repos/home_repo.dart';

class FetchFeaturedBooksUseCase extends UseCase<List<BookEntity>, int> {
  final HomeRepo homeRepo;

  FetchFeaturedBooksUseCase(this.homeRepo);

  @override
  Future<Either<Failure, List<BookEntity>>> call([int PageNumber = 0]) async {
    return await homeRepo.fetchFeaturedBooks(
      pageNumber: PageNumber,
    );
  }
}
