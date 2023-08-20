import 'package:clean_arch_bookly_app_v1/features/splash/presentation/views/splashView.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main(List<String> args) {}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      home: SplashView(),
    );
  }
}
