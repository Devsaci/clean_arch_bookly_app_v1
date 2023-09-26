import 'package:flutter/material.dart';

import '../../../../../core/uttlls/assets.dart';

class CustumBookImage extends StatelessWidget {
  const CustumBookImage({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.8 / 4,
      child: Container(
        //height: MediaQuery.of(context).size.height * .25,
        // width: 100,
        decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.circular(60),
          image: const DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(
              AssetsData.testImage,
            ),
          ),
        ),
      ),
    );
  }
}