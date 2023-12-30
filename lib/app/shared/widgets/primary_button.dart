import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  final String title;
  final double? width;
  final double? height;
  final double? borderRadius;
  final IconData? icon;
  final void Function()? onPressed;
  final double? marginLeft;
  final double? marginRight;
  final double? marginTop;
  final double? marginBottom;
  final Color? backgroundColor;
  final Color? foregroundColor;
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
    this.backgroundColor = const Color(0xff1872F6),
    this.foregroundColor = Colors.white,
    this.icon,
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
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
          foregroundColor: foregroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              borderRadius ?? 8,
            ),
          ),
        ),
        child: title.isEmpty
            ? Icon(
                icon,
              )
            : Text(
                title,
              ),
      ),
    );
  }
}
