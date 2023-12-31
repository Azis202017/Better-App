import 'package:better_app/app/shared/themes/color.dart';
import 'package:better_app/app/shared/themes/font.dart';
import 'package:flutter/material.dart';

class EmptyState extends StatelessWidget {
  final String title;
  final String subtitle;
  final void Function()? onTap;

  const EmptyState({
    super.key,
    required this.title,
    required this.subtitle,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(
          height: 60,
        ),
        Image.asset(
          'assets/img/books_empty.png',
          width: 226,
          height: 208,
        ),
        const SizedBox(
          height: 24,
        ),
        SizedBox(
          width: double.infinity,
          child: Text(
            title,
            style: p3Bold,
            textAlign: TextAlign.center,
          ),
        ),
        SizedBox(
          width: double.infinity,
          child: Text(
            subtitle,
            style: p2.copyWith(
              color:grey600Color,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        const SizedBox(
          height: 24,
        ),
        Container(
          margin: const EdgeInsets.symmetric(
            horizontal: 42,
          ),
          width: double.infinity,
          child: ElevatedButton(
            onPressed: onTap,
            child: const Text('Refresh'),
          ),
        ),
      ],
    );
  }
}
