import 'package:better_app/app/shared/themes/color.dart';
import 'package:flutter/material.dart';

import '../themes/font.dart';

class RichTwoText extends StatelessWidget {
  final String text1;
  final String text2;
  const RichTwoText({
    super.key,
    required this.text1,
    required this.text2,
  });

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        text: '$text1 ',
        style: t7.copyWith(
          color: primaryEbonyClayColor,
        ),
        children: [
          TextSpan(
            text: text2,
            style: t7.copyWith(
              color: primaryBetterColor,
            ),
          ),
        ],
      ),
    );
  }
}
