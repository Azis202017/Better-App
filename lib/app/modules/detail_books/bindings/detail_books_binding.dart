import 'package:get/get.dart';

import '../controllers/detail_books_controller.dart';

class DetailBooksBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DetailBooksController>(
      () => DetailBooksController(),
    );
  }
}
