import 'package:clean_arch_bookly_app_v1/core/uttlls/assets.dart';
import 'package:flutter/material.dart';

class SplashviewBody extends StatelessWidget {
  // const SplashviewBody({super.key});
  const SplashviewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(AssetsData.logo),
          const SizedBox(height: 50),
          const Text("BOOKLY", style: TextStyle(color: Colors.amber)),
        ],
      ),
    );
  }
}
