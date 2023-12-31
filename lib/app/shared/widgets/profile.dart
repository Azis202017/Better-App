import 'package:better_app/app/shared/themes/color.dart';
import 'package:better_app/app/shared/themes/font.dart';
import 'package:flutter/material.dart';

class ProfileWidget extends StatelessWidget {
  final String name;
  final String email;
  final void Function()? onPressed;
  const ProfileWidget({
    super.key,
    required this.name,
    required this.email,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ClipRRect(
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
        const SizedBox(
          width: 20,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: p5.copyWith(
                  color: Colors.white,
                ),
              ),
              Text(
                email,
                style: p4Bold.copyWith(
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
        
      ],
    );
  }
}
