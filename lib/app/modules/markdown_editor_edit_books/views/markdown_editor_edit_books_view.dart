import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/markdown_editor_edit_books_controller.dart';

class MarkdownEditorEditBooksView
    extends GetView<MarkdownEditorEditBooksController> {
  const MarkdownEditorEditBooksView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MarkdownEditorEditBooksView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'MarkdownEditorEditBooksView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
