import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

// import '../../../../../core/uttlls/assets.dart';

class CustumBookImage extends StatelessWidget {
  //const CustumBookImage({super.key, required this.image});
  const CustumBookImage({
    Key? key,
    required this.image,
  }) : super(key: key);
  final String image;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 4.5 / 5,
      child: CachedNetworkImage(
        imageUrl: image,
        fit: BoxFit.fill,
      ),
    );
  }
}
