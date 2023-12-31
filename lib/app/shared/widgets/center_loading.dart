import 'package:flutter/material.dart';

class CenterLoading extends StatelessWidget {
  const CenterLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return const Material(
      color: Colors.white,
      child: Center(
        child: CircularProgressIndicator.adaptive(),
      ),
    );
  }
}
