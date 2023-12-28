import 'package:flutter/material.dart';

class CenterLogo extends StatelessWidget {
  final String logo;
  final double? width;
  final double? height;
  const CenterLogo({
    super.key,
    required this.logo,
    this.width,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.asset(
        'assets/img/$logo.png',
        width: width,
        height: height,
      ),
    );
  }
}
