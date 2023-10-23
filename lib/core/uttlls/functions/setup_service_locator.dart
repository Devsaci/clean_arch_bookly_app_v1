import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import '../../../features/home/data/data_sources/home_local_data_source.dart';
import '../../../features/home/data/data_sources/home_remote_data_source.dart';
import '../../../features/home/data/repos/home_repo_impl.dart';
// import '../../../main.dart';
import '../api_service.dart';

final getIt = GetIt.instance;

void setupServiceLocator() {
  // Injection depandence ApiService
  getIt.registerSingleton<ApiService>(
    ApiService(
      Dio(),
    ),
  );
  // injection depandence  HomeRepoImpl
  getIt.registerSingleton<HomeRepoImpl>(
    HomeRepoImpl(
      homeLocalDataSource: HomeLocalDataSourceImpl(),
      homeRemoteDataSource: HomeRemoteDataSourceImpl(
        ApiService(
          Dio(),
        ),
      ),
    ),
  );
}
