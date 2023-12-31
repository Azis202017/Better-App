import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:simple_markdown_editor/simple_markdown_editor.dart';

import '../controllers/markdown_editor_edit_books_controller.dart';

class MarkdownEditorEditBooksView
    extends GetView<MarkdownEditorEditBooksController> {
  const MarkdownEditorEditBooksView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: controller.backToAddBooks,
          icon: const Icon(
            Icons.arrow_back,
          ),
        ),
        title: const Text('Markdown editor update books'),
      ),
      body: MarkdownFormField(
        controller: controller.descriptionController,
        enableToolBar: true,
        emojiConvert: true,
        autoCloseAfterSelectEmoji: false,
      ),
    );
  }
}
