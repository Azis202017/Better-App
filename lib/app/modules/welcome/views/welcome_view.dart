import 'package:better_app/app/shared/widgets/get_image.dart';
import 'package:better_app/app/shared/widgets/primary_button.dart';
import 'package:better_app/app/shared/widgets/subtitle_text.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../shared/widgets/rich_two_text.dart';
import '../controllers/welcome_controller.dart';

class WelcomeView extends GetView<WelcomeController> {
  const WelcomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetBuilder<WelcomeController>(
      builder: (_) {
        return SafeArea(
          child: Scaffold(
            body: RefreshIndicator(
              onRefresh: controller.getUserData,
              child: SingleChildScrollView(
                physics: const AlwaysScrollableScrollPhysics(),
                child: Container(
                  margin: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 100,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const GetImage(
                        image: 'welcome_illustration',
                        width: 108,
                        height: 150,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 112.0),
                        child: RichTwoText(
                          text1: 'Glad to have you with us,',
                          text2: controller.user?.name ?? "",
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      const SubtitleText(
                        subtitle: 'Let your journey begin',
                      ),
                    ],
                  ),
                ),
              ),
            ),
            bottomNavigationBar: PrimaryButton(
              title: 'Continue',
              marginBottom: 50,
              marginLeft: 20,
              marginRight: 20,
              onPressed: controller.toHomePage,
            ),
          ),
        );
      }
    );
  }
}
