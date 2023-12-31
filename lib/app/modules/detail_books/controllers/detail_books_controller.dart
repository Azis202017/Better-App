import 'package:better_app/app/data/model/detail_book.dart';
import 'package:better_app/app/helpers/alert_success.dart';
import 'package:better_app/app/services/book_service.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../helpers/alert_error.dart';

class DetailBooksController extends GetxController {
  DetailBook? detailBook = DetailBook();
  bool isLoading = true;
  @override
  void onInit() {
    super.onInit();
    fetchDetailBook();
  }

  void fetchDetailBook() async {
    isLoading = false;
    detailBook = await BookService().fetchDetailBook(
      id: Get.arguments['id'],
    );
    update();
  }

  void deleteBook() async {
    Get.defaultDialog(
      title: 'Confirm Delete Books',
      content: const Text('Are you sure want to delete this book?'),
      textConfirm: 'Confirm',
      textCancel: 'Cancel',
      onConfirm: () async {
        Get.back();
        bool isSuccessDelete =
            await BookService().deleteBooks(id: Get.arguments['id']);
        if (isSuccessDelete) {
          Get.back();
          alertSuccess(
            title: 'Success deleted books',
            subtitle:
                'Whoaa success deleted book, waiting for you upload again',
          );
        } else {
          alertError(
            title: 'Whoaa you failed deleted books',
            subtitle: 'Failed deleted books we don\'t find the id of the books',
          );
        }
      },
      onCancel: () {
        Get.back();
      }
    );
  }
}
