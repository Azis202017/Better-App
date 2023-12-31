import 'package:get/get.dart';

import '../controllers/markdown_editor_edit_books_controller.dart';

class MarkdownEditorEditBooksBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MarkdownEditorEditBooksController>(
      () => MarkdownEditorEditBooksController(),
    );
  }
}
