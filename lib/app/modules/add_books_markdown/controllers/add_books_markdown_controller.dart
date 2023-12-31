import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddBooksMarkdownController extends GetxController {
  TextEditingController descriptionController = TextEditingController(text: Get.arguments['description']);
  void backToAddBooks() {
    Get.back(result: descriptionController.text);
  }
}
