import 'package:better_app/app/shared/widgets/get_image.dart';
import 'package:better_app/app/shared/widgets/subtitle_text.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../shared/widgets/rich_two_text.dart';
import '../controllers/welcome_controller.dart';

class WelcomeView extends GetView<WelcomeController> {
  const WelcomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
              margin: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 100,
              ),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GetImage(
                    image: 'welcome_illustration',
                    width: 108,
                    height: 150,
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 112.0),
                    child: RichTwoText(
                      text1: 'Glad to have you with us,',
                      text2: 'Borkat!',
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  SubtitleText(
                    subtitle: 'Let your journey begin',
                  ),
                ],
              )),
        ),
      ),
    );
  }
}
