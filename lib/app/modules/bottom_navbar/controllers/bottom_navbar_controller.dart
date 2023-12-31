import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../home/views/home_view.dart';
import '../../profile/views/profile_view.dart';

class BottomNavbarController extends GetxController {
  List<Widget> pages = [
    const HomeView(),
    const ProfileView(),
  ];
  int currentIndex = 0;
  void changePage(int index) {
    currentIndex = index;
    update();
  }
}
