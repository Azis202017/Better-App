import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  final String title;
  final double? width;
  final double? height;
  final int? borderRadius;
  final void Function()? onPressed;
  final double? marginLeft;
  final double? marginRight;
  final double? marginTop;
  final double? marginBottom;
  const PrimaryButton({
    super.key,
    required this.title,
    this.onPressed,
    this.width = double.infinity,
    this.height = 56,
    this.borderRadius,
    this.marginLeft,
    this.marginRight,
    this.marginTop,
    this.marginBottom,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: marginTop ?? 0,
        left: marginLeft ?? 0,
        right: marginRight ?? 0,
        bottom: marginBottom ?? 0,
      ),
      width: width,
      height: height,
      child: ElevatedButton(
        onPressed: onPressed,
        child: Text(
          title,
        ),
      ),
    );
  }
}
