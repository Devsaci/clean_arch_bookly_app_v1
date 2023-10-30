import 'package:flutter/material.dart';

import '../../../../../core/uttlls/assets.dart';

class CustumBookImage extends StatelessWidget {
  //const CustumBookImage({super.key, required this.image});
  const CustumBookImage({Key? key, required this.image}) : super(key: key);
  final String image;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 4.5 / 5,
      child: Container(
        //height: MediaQuery.of(context).size.height * .25,
        // width: 100,
        decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.circular(60),
          image: const DecorationImage(
            fit: BoxFit.fitHeight,
            image: AssetImage(
              AssetsData.testImage,
            ),
          ),
        ),
      ),
    );
  }
}
