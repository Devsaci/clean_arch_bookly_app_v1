import 'package:flutter/material.dart';

class SlidingText extends StatelessWidget {
  const SlidingText({
    Key? key,
    required this.slindingAnimation,
  }) : super(key: key);

  final Animation<Offset> slindingAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: slindingAnimation,
      builder: (context, _) {
        return SlideTransition(
          position: slindingAnimation,
          child: const Text(
            "Choice book free",
            textAlign: TextAlign.center,
          ),
        );
      },
    );
  }
}
