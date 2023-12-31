import 'package:clean_arch_bookly_app_v1/core/uttlls/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
  const BookRating({
    super.key,
    this.mainAxisAlignment = MainAxisAlignment.start,
  });
  final MainAxisAlignment mainAxisAlignment;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        const Icon(
          FontAwesomeIcons.solidStar,
          color: Color.fromARGB(255, 240, 213, 103),
        ),
        const SizedBox(width: 20),
        const Text('4.8', style: Styles.textStyle14),
        const SizedBox(width: 10),
        Opacity(
          opacity: .5,
          child: Text('(245)',
              style: Styles.textStyle14
                  .copyWith(color: const Color.fromARGB(255, 235, 218, 218))),
        ),
      ],
    );
  }
}
