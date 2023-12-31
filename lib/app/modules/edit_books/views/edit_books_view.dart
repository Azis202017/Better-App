import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

import 'package:get/get.dart';

import '../../../shared/themes/font.dart';
import '../../../shared/widgets/primary_button.dart';
import '../../../shared/widgets/text_input.dart';
import '../controllers/edit_books_controller.dart';

class EditBooksView extends GetView<EditBooksController> {
  const EditBooksView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetBuilder<EditBooksController>(builder: (context) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Edit Books'),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.symmetric(
              horizontal: 16,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 40,
                ),
                TextInput(
                  title: 'Isbn',
                  textEditingController: controller.isbnController,
                ),
                const SizedBox(
                  height: 20,
                ),
                TextInput(
                  title: 'Author',
                  textEditingController: controller.authorController,
                ),
                const SizedBox(
                  height: 20,
                ),
                TextInput(
                  title: 'Title',
                  textEditingController: controller.titleController,
                ),
                const SizedBox(
                  height: 20,
                ),
                TextInput(
                  title: 'Subtitle',
                  textEditingController: controller.subtitleController,
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "Description",
                  style: p3semiBold,
                ),
                const SizedBox(
                  height: 10,
                ),
                GestureDetector(
                  onTap: controller.toMarkDown,
                  child: controller.description.isEmpty
                      ? Text(
                          'Create description in here...',
                          style: p3Medium,
                        )
                      : MarkdownBody(
                          data: controller.description,
                        ),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextInput(
                  title: 'Pages',
                  textEditingController: controller.pagesController,
                ),
                const SizedBox(
                  height: 20,
                ),
                TextInput(
                  title: 'Website',
                  textEditingController: controller.websiteController,
                ),
                const SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: controller.showDate,
                  child: TextInput(
                    title: 'Published',
                    onTap:controller.showDate,
                    readOnly: true,
                    textEditingController: controller.publishedController,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextInput(
                  title: 'Publisher',
                  textEditingController: controller.publisherController,
                ),
                const SizedBox(
                  height: 20,
                ),
                PrimaryButton(
                  title: 'Update',
                  onPressed: controller.updateBooks,
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
      );
    });
  }
}
