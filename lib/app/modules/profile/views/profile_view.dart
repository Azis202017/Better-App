import 'package:better_app/app/shared/themes/color.dart';
import 'package:better_app/app/shared/widgets/center_loading.dart';
import 'package:better_app/app/shared/widgets/profile.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  const ProfileView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProfileController>(builder: (context) {
      return SafeArea(
        child:controller.isLoading ? const CenterLoading(): Scaffold(
         
          body: RefreshIndicator(
            onRefresh: controller.fetchUser,
            child: SingleChildScrollView(
              physics: const AlwaysScrollableScrollPhysics(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: double.infinity,
                    color: primaryBetterColor,
                    padding: const EdgeInsets.all(20),
                    child: ProfileWidget(
                      email: controller.user?.email ?? "",
                      name: controller.user?.name ?? "",
                    ),
                  ),
                  GestureDetector(
                    onTap: controller.logoutUser,
                    child: Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(20),
                      child:  Column(
                        children: [
                          ListTile(
                            leading: const Icon(Icons.exit_to_app),
                            onTap: controller.logoutUser,
                            title: const Text('Logout'),
                            
                          ),
                          const Divider()
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    });
  }
}
