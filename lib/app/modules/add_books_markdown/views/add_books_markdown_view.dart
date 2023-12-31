import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:simple_markdown_editor/simple_markdown_editor.dart';

import '../controllers/add_books_markdown_controller.dart';

class AddBooksMarkdownView extends GetView<AddBooksMarkdownController> {
  const AddBooksMarkdownView({Key? key}) : super(key: key);
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
        title: const Text('Markdown editor create books'),
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
