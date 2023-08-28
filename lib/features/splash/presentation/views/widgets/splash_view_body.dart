import 'package:clean_arch_bookly_app_v1/core/uttlls/assets.dart';
import 'package:flutter/material.dart';

import 'slinding_text.dart';

class SplashviewBody extends StatefulWidget {
  // const SplashviewBody({super.key});
  const SplashviewBody({Key? key}) : super(key: key);

  @override
  State<SplashviewBody> createState() => _SplashviewBodyState();
}

class _SplashviewBodyState extends State<SplashviewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slindingAnimation;
  @override
  void initState() {
    super.initState();
    animationController = initSlidingAnimation();
    slindingAnimation =
        Tween<Offset>(begin: const Offset(0, 10), end: Offset.zero)
            .animate(animationController);
    animationController.forward();
    // slindingAnimation.addListener(() {
    //   setState(() {});
    // });
  }

// methode Extracted  initSlidingAnimation()
  AnimationController initSlidingAnimation() {
    return AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );
  }

  //   late AnimationController animationController;

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      //crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(AssetsData.logo, color: Colors.deepOrange),
        const SizedBox(height: 4),
        SlidingText(slindingAnimation: slindingAnimation),
      ],
    );
  }
}
