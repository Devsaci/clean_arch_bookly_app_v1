import 'package:clean_arch_bookly_app_v1/core/uttlls/app_router.dart';
import 'package:clean_arch_bookly_app_v1/features/home/domain/entities/book_entity.dart';
import 'package:flutter/material.dart';
import 'package:clean_arch_bookly_app_v1/constants.dart';
// import 'package:clean_arch_bookly_app_v1/features/home/presentation/views/home_view.dart';
// import 'package:clean_arch_bookly_app_v1/features/splash/presentation/views/splash_view.dart';
// import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive/hive.dart';

void main() async {
  runApp(const Bookly());
  Hive.registerAdapter(BookEntityAdapter());
  await Hive.openBox("featured_box");
}

class Bookly extends StatelessWidget {
  const Bookly({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter.router,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: kPrimaryColor,
        textTheme: GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
      ),
    );
  }
}
