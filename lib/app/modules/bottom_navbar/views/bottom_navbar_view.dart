// ignore_for_file: deprecated_member_use

import 'package:better_app/app/modules/home/controllers/home_controller.dart';
import 'package:better_app/app/modules/profile/controllers/profile_controller.dart';
import 'package:better_app/app/shared/themes/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';

import '../controllers/bottom_navbar_controller.dart';

class BottomNavbarView extends GetView<BottomNavbarController> {
  const BottomNavbarView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetBuilder<BottomNavbarController>(builder: (context) {
      Get.put(ProfileController());
      Get.put(HomeController());

      return Scaffold(
        resizeToAvoidBottomInset: false,
        body: controller.pages.elementAt(
          controller.currentIndex,
        ),
        bottomNavigationBar: SizedBox(
          height: 100,
          child: ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
            child: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              backgroundColor: Colors.white,
              
              items: [
                BottomNavigationBarItem(
                  icon: Image.asset(
                    'assets/img/speedometer-03.png',
                    width: 24,
                    height: 24,
                    color: grey600Color,
                  ),
                  activeIcon: Image.asset(
                    'assets/img/speedometer-03.png',
                    color: primaryBetterColor,
                    width: 24,
                    height: 24,
                  ),
                  label: 'Discover',
                ),
                BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    'assets/svg/user-03.svg',
                    width: 24,
                    height: 24,
                    color: grey600Color,
                  ),
                  activeIcon: SvgPicture.asset(
                    'assets/svg/user-03.svg',
                    width: 24,
                    height: 24,
                    color: primaryBetterColor,
                  ),
                  label: 'Profile',
                ),
              ],
              unselectedItemColor: grey600Color,
              currentIndex: controller.currentIndex,
              onTap: controller.changePage,
            ),
          ),
        ),
      );
    });
  }
}
