import 'package:clean_arch_bookly_app_v1/core/uttlls/api_service.dart';
import 'package:clean_arch_bookly_app_v1/core/uttlls/app_router.dart';
import 'package:clean_arch_bookly_app_v1/core/uttlls/simple_bloc_observer.dart';
import 'package:clean_arch_bookly_app_v1/features/home/data/data_sources/home_local_data_source.dart';
import 'package:clean_arch_bookly_app_v1/features/home/data/repos/home_repo_impl.dart';
import 'package:clean_arch_bookly_app_v1/features/home/domain/entities/book_entity.dart';
import 'package:clean_arch_bookly_app_v1/features/home/presentation/manger/featured_books_cubit/featured_books_cubit.dart';
import 'package:clean_arch_bookly_app_v1/features/home/presentation/manger/newset_books_cubit/newset_books_cubit.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:clean_arch_bookly_app_v1/constants.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
// import 'package:clean_arch_bookly_app_v1/features/home/presentation/views/home_view.dart';
// import 'package:clean_arch_bookly_app_v1/features/splash/presentation/views/splash_view.dart';
// import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';

import 'core/uttlls/functions/setup_service_locator.dart';
import 'features/home/data/data_sources/home_remote_data_source.dart';
import 'features/home/domain/use_cases/fetch_featured_books_use_case.dart';
import 'features/home/domain/use_cases/fetch_newest_books_use_case.dart';

void main() async {
  //initFlutter box
  await Hive.initFlutter();
  //register adapter
  Hive.registerAdapter(BookEntityAdapter());
  // Extracted Methode setupServiceLocator
  setupServiceLocator();
  //cache featured books
  await Hive.openBox<BookEntity>(kFeaturedBox);
  //cache newest books
  await Hive.openBox<BookEntity>(kNewestBox);
  Bloc.observer = SimpleBlocObserver();
  runApp(const Bookly());
}

class Bookly extends StatelessWidget {
  const Bookly({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) {
            return FeaturedBooksCubit(
              FetchFeaturedBooksUseCase(
                getIt.get<HomeRepoImpl>(),
              ),
            );
          },
        ),
        BlocProvider(
          create: (context) {
            return NewestBooksCubit(
              FetchNewestdBooksUseCase(
                getIt.get<HomeRepoImpl>(),
              ),
            );
          },
        ),
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: kPrimaryColor,
          textTheme:
              GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
        ),
      ),
    );
  }
}
