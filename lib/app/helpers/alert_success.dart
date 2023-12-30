import 'package:better_app/app/shared/themes/font.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';



void alertSuccess({required String title, required String subtitle}) {
  Get.snackbar(
    "",
    "",
    titleText: Text(
      title,
      style: p1Bold,
    ),
    messageText: Text(
      style: p4Medium,

      subtitle,
    ),

    margin: const EdgeInsets.only(
      left: 16.0,
      right: 16,
    ),
    padding: const EdgeInsets.all(12),
    borderRadius: 8.0,
    borderColor: const Color(0xFF1AB269),
    borderWidth: 1.0,
    colorText: Colors.black,
    backgroundColor: const Color(0xFFE9FCF3),
    snackPosition: SnackPosition.TOP,
    mainButton: TextButton(
      style: TextButton.styleFrom(padding: EdgeInsets.zero),
      onPressed: () {
        Get.back();
      },
      child: SizedBox(
        width: 24,
        height: 24,
        child: SvgPicture.asset(
          'assets/svg/close-circle.svg',
          fit: BoxFit.contain,
        ),
      ),
    ),
    // Replace with your icon color
    onTap: (_) {
      // Handle tap on the snackbar
      Get.back();
    },
    duration: const Duration(seconds: 2),
  );
}
