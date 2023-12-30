import 'package:flutter/material.dart';

import '../themes/color.dart';
import '../themes/font.dart';

class RichFourText extends StatelessWidget {
  final String text1;
  final String text2;
  final String text3;
  final String text4;


  const RichFourText({
    super.key,
    required this.text1,
    required this.text2,
    required this.text3,
    required this.text4,
    
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
          TextSpan(
            text: text3,
            style: t7.copyWith(
              color: primaryEbonyClayColor,
            ),
          ),
           TextSpan(
            text: text4,
            style: t7.copyWith(
              color: primaryBetterColor,
            ),
          ),
        ],
      ),
    );
  }
}
