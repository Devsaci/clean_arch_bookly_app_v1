import 'package:flutter/material.dart';

class SplashviewBody extends StatelessWidget {
  // const SplashviewBody({super.key});
  const SplashviewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset("Path image"),
      ],
    );
  }
}
