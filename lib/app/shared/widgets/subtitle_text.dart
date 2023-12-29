import 'package:flutter/material.dart';

import '../themes/font.dart';

class SubtitleText extends StatelessWidget {
  final String subtitle;
  const SubtitleText({
    super.key,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Text(subtitle, style: p3);
  }
}
