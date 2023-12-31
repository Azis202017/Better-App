import 'package:better_app/app/helpers/alert_error.dart';
import 'package:better_app/app/helpers/alert_success.dart';
import 'package:better_app/app/routes/app_pages.dart';
import 'package:better_app/app/services/book_service.dart';
import 'package:better_app/app/services/input/books/book_input.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../helpers/date_to_string.dart';

class AddBooksController extends GetxController {
  TextEditingController isbnController = TextEditingController();
  TextEditingController titleController = TextEditingController();
  TextEditingController subtitleController = TextEditingController();
  TextEditingController authorController = TextEditingController();
  TextEditingController publisherController = TextEditingController();
  TextEditingController publishedController = TextEditingController();

  TextEditingController pagesController = TextEditingController();

  TextEditingController websiteController = TextEditingController();

  num isbn = 0;
  String title = "";
  String subtitle = "";
  String author = "";
  DateTime currentDate = DateTime.now();
  String publisher = "";
  num pages = 0;
  String description = "";
  String website = "";

  // Property to store the selected date
  Rx<DateTime> selectedDate = DateTime.now().obs;

  void showDate() async {
    DateTime? pickedDate = await showDatePicker(
      context: Get.overlayContext!,
      initialDate: currentDate,
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );

    if (pickedDate != null) {
      currentDate = pickedDate;
      publishedController.text = FormattedDate().formattingDate(currentDate);
    }
  }

  void toMarkDown() async {
    description = await Get.toNamed(Routes.ADD_BOOKS_MARKDOWN, arguments: {
      "description": description,
    });

    update();
  }

  void createBooks() async {
    BookInput dataBook = BookInput(
      isbn: isbnController.text,
      title: titleController.text,
      subtitle: subtitleController.text,
      author: authorController.text,
      publisher: publisherController.text,
      published: FormattedDate().formattedDateToString(dateTime: currentDate),
      pages: num.parse(pagesController.text),
      description: description,
      website: websiteController.text,
    );
    bool isSuccessCreateBooks =
        await BookService().createBooks(booksInput: dataBook);
    if (isSuccessCreateBooks) {
      Get.back();
      alertSuccess(
        title: 'Success uplooad books',
        subtitle:
            'Whoaa success upload book, thank you for the contribution to the world',
      );
    } else {
      alertError(
        title: 'Whoaa you failed upload books',
        subtitle: 'Failed upload books check if the books is correct',
      );
    }
  }
}
