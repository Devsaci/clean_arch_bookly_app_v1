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
          Image.asset("assets/images/Logo.png"),
          const SizedBox(height: 50),
          const Text("BOOKLY", style: TextStyle(color: Colors.amber)),
        ],
      ),
    );
  }
}
