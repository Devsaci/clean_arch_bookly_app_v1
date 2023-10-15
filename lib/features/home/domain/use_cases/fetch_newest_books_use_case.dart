import 'package:clean_arch_bookly_app_v1/core/errors/failure.dart';
import 'package:clean_arch_bookly_app_v1/features/home/domain/repos/home_repo.dart';

import 'package:dartz/dartz.dart';

import '../../../../core/use_case/use_case.dart';
import '../entities/book_entity.dart';

class FetchNewestdBooksUseCase extends UseCase<List<BookEntity>, NoParam> {
  final HomeRepo homeRepo;

  FetchNewestdBooksUseCase(this.homeRepo);
  @override
  Future<Either<Failure, List<BookEntity>>> call([NoParam? param]) async {
    return await homeRepo.fetchNewsetBooks();
  }
}
