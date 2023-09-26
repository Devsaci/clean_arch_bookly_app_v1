import 'package:clean_arch_bookly_app_v1/core/uttlls/styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
      ),
      onPressed: () {},
      child: Text(
        '19.99€',
        style: Styles.textStyle14.copyWith(
          color: Colors.white,
        ),
      ),
    );
  }
}
