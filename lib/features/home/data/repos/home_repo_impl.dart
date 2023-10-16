import 'package:clean_arch_bookly_app_v1/core/errors/failure.dart';
import 'package:clean_arch_bookly_app_v1/features/home/data/data_sources/home_local_data_source.dart';
import 'package:clean_arch_bookly_app_v1/features/home/data/data_sources/home_remote_data_source.dart';
import 'package:clean_arch_bookly_app_v1/features/home/domain/entities/book_entity.dart';
import 'package:clean_arch_bookly_app_v1/features/home/domain/repos/home_repo.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImpl extends HomeRepo {
  final HomeRemoteDataSource homeRemoteDataSource;
  final HomeLocalDataSourceImpl homeLocalDataSourceImpl;

  HomeRepoImpl({
    required this.homeRemoteDataSource,
    required this.homeLocalDataSourceImpl,
  });

  @override
  Future<Either<Failure, List<BookEntity>>> fetchFeaturedBooks() {
    // TODO: implement fetchFeaturedBooks
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<BookEntity>>> fetchNewsetBooks() {
    // TODO: implement fetchNewsetBooks
    throw UnimplementedError();
  }
}
