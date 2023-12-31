import 'package:better_app/app/shared/themes/color.dart';
import 'package:flutter/material.dart';

class OutlinedPrimaryButton extends StatelessWidget {
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
  final Color? borderColor;
  final Color? foregroundColor;
  const OutlinedPrimaryButton({
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
    this.borderColor = const Color(0xff1872F6),
    this.foregroundColor = const Color(0xff1872F6),
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
      child: OutlinedButton(
        onPressed: onPressed,
        
        style: OutlinedButton.styleFrom(
          foregroundColor: foregroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              borderRadius ?? 8,
            ),
            side: BorderSide(
              color: borderColor ?? primaryBetterColor,
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
