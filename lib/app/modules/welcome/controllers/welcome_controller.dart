import 'package:better_app/app/data/model/user.dart';
import 'package:better_app/app/routes/app_pages.dart';
import 'package:better_app/app/services/user_service.dart';
import 'package:get/get.dart';

import '../../../constant/global_variable.dart';

class WelcomeController extends GetxController {
  User? user = User();
  bool isLoading = true;
  @override
  void onInit() {
    getUserData();
    super.onInit();
  }
  @override
  void onReady() {
    super.onReady();
    checkIsFirstTime();
  }
  void toHomePage() {
    storage.write('welcome', 1);
    Get.offAllNamed(Routes.BOTTOM_NAVBAR);
  }

  void checkIsFirstTime() {
    if (storage.read('welcome') == 1) {
      Get.offAllNamed(Routes.BOTTOM_NAVBAR);
    }
  }
  Future<void> getUserData() async{
    user = await UserService().fetchUser();
    isLoading = false;
    update();
  }
}
