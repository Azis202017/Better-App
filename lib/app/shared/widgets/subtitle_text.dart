import 'package:flutter/material.dart';

import '../themes/font.dart';

class SubtitleText extends StatelessWidget {
  final String subtitle;
  final TextAlign? textAlign;
  const SubtitleText({super.key, required this.subtitle, this.textAlign});

  @override
  Widget build(BuildContext context) {
    return Text(
      subtitle,
      style: p3,
      textAlign: textAlign,
    );
  }
}
