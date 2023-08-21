import 'package:flutter/material.dart';

class SplashviewBody extends StatelessWidget {
  // const SplashviewBody({super.key});
  const SplashviewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 200,
        width: 200,
        color: Colors.amber,
      ),
    );
  }
}
