import 'package:clean_arch_bookly_app_v1/core/uttlls/assets.dart';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

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

    initSlidingAnimation();

    navigateToHome();
  }

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

// Extracted Methode initSlidingAnimation()
  void initSlidingAnimation() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );
    slindingAnimation =
        Tween<Offset>(begin: const Offset(0, 10), end: Offset.zero)
            .animate(animationController);
    animationController.forward();
  }

  // Extracted Methode Future.delayed HomeView
  void navigateToHome() {
    Future.delayed(
      const Duration(seconds: 3),
      () {
        GoRouter.of(context).push('/homeView');
      },
    );
  }
}
