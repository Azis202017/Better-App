import 'package:get/get.dart';

import '../controllers/add_books_markdown_controller.dart';

class AddBooksMarkdownBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AddBooksMarkdownController>(
      () => AddBooksMarkdownController(),
    );
  }
}
