import 'package:clean_arch_bookly_app_v1/core/uttlls/assets.dart';
import 'package:flutter/material.dart';

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
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(minutes: 1),
    );
    slindingAnimation =
        Tween<Offset>(begin: const Offset(0, 2), end: Offset.zero)
            .animate(animationController);
    slindingAnimation.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      //crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(AssetsData.logo, color: Colors.deepOrange),
        const SizedBox(height: 50),
        SlideTransition(
          position: slindingAnimation,
          child: const Text(
            "Choice book free",
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
