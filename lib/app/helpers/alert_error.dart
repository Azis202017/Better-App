import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../shared/themes/color.dart';

void alertError({required String title, required String subtitle}) {
  Get.snackbar(
    "",
    "",
    titleText: Text(
      title,
      
    ),
    messageText: Text(
      subtitle,
    ),

    margin: const EdgeInsets.only(
      left: 16.0,
      right: 16,
    ),
    padding: const EdgeInsets.all(12),
    borderRadius: 8.0,
    borderColor: errorPrimary,
    borderWidth: 1.0,
    colorText: Colors.black,
    backgroundColor: errorSecondary,
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
