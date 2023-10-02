import 'package:clean_arch_bookly_app_v1/core/errors/failure.dart';

import 'package:dartz/dartz.dart';

import '../../../../core/use_case/use_case.dart';
import '../entities/book_entitiy.dart';

class FetchNewestdBooksUseCase extends UseCase<List<BookEntity>, NoParam> {
  @override
  Future<Either<Failure, List<BookEntity>>> call([NoParam? param]) {
    // TODO: implement call
    throw UnimplementedError();
  }
}
