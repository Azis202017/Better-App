import 'package:better_app/app/shared/themes/font.dart';
import 'package:better_app/app/shared/widgets/primary_button.dart';
import 'package:better_app/app/shared/widgets/text_input.dart';
import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

import 'package:get/get.dart';

import '../controllers/add_books_controller.dart';

class AddBooksView extends GetView<AddBooksController> {
  const AddBooksView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetBuilder<AddBooksController>(builder: (context) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Upload Books'),
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
                  textInputType: TextInputType.number,
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
                  textInputType: TextInputType.number,
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
                    onTap: controller.showDate,
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
                  title: 'Upload books',
                  onPressed: controller.createBooks,
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
