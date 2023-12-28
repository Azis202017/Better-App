import 'package:flutter/material.dart';

class LogoBackground extends StatelessWidget {
  final String logo;
  final double height, width;
  const LogoBackground({
    super.key,
    required this.logo,
    required this.height,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            'assets/img/pattern.png',
            
          ),
          fit: BoxFit.cover
        ),
      ),
      child: Center(
        child: Image.asset(
          'assets/img/$logo.png',
          width: width,
          height: height,
        ),
      ),
    );
  }
}
