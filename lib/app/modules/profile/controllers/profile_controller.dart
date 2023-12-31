import 'package:better_app/app/data/model/user.dart';
import 'package:better_app/app/services/user_service.dart';
import 'package:get/get.dart';

import '../../../routes/app_pages.dart';

class ProfileController extends GetxController {
  User? user = User();
  bool isLoading = true;
  @override
  void onInit() {
    super.onInit();
    fetchUser();
  }

  Future<void> fetchUser() async {
    user = await UserService().fetchUser();
    isLoading = false;
    update();
  }

  void logoutUser() async {
   if( await UserService().logout()) {
Get.offAllNamed(Routes.LOGIN);
   }else{

   }
  }
}
