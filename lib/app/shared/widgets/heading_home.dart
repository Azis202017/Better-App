import 'package:better_app/app/shared/themes/color.dart';
import 'package:flutter/material.dart';

import '../themes/font.dart';

class HeadingHome extends StatelessWidget {
  final String name;
  final void Function()? onPressed;
  const HeadingHome({
    super.key,
    required this.name,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Selamat Datang',
                style: p5.copyWith(
                  color: secondaryWhiteColor,
                ),
              ),
              Text(
                name,
                style: p4Bold.copyWith(
                  color: secondaryWhiteColor,
                ),
              ),
            ],
          ),
        ),
        GestureDetector(
          onTap: onPressed,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(
              80,
            ),
            child: Image.asset(
              'assets/img/fill_logo.png',
              width: 80,
              height: 80,
              fit: BoxFit.cover,
              color: secondaryWhiteColor,
            ),
          ),
        ),
      ],
    );
  }
}
