import 'package:clean_arch_bookly_app_v1/features/splash/presentation/views/splashView.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'constants.dart';

void main() {
  runApp(const Bookly());
}

class Bookly extends StatelessWidget {
  const Bookly({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData.dark().copyWith(),
      home: const SplashView(),
    );
  }
}
