import 'package:flutter/material.dart';

class GetImage extends StatelessWidget {
  final String image;
  final double? width;
  final double? height;
  final Color? color;
  final BoxFit? fit;
  const GetImage({
    super.key,
    required this.image,
    this.width,
    this.height,
    this.color,
    this.fit,
  });

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/img/$image.png',
      width: width,
      height:height,
      color: color,
      fit: fit,
    );
  }
}
