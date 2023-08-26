import 'package:clean_arch_bookly_app_v1/core/uttlls/assets.dart';
import 'package:flutter/material.dart';

class SplashviewBody extends StatelessWidget {
  // const SplashviewBody({super.key});
  const SplashviewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      //crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(AssetsData.logo, color: Colors.deepOrange),
        const SizedBox(height: 50),
        const Text(
          "Choice book free",
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
