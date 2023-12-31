import 'package:better_app/app/data/model/user.dart';
import 'package:better_app/app/helpers/alert_error.dart';
import 'package:better_app/app/helpers/alert_success.dart';
import 'package:better_app/app/services/user_service.dart';
import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../../../shared/widgets/center_loading.dart';

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
    Get.defaultDialog(
      title: "Waiting for the process",
      content: const CenterLoading(),
    );
    if (await UserService().logout()) {
      Get.back();
      alertSuccess(title: 'Logout Success', subtitle: 'Thank you for using better app');
      Get.offAllNamed(Routes.LOGIN);
    } else {
      alertError(title: 'Logout Failed', subtitle: 'Close this app and login again');

    }
  }
}
