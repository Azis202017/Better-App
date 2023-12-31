import 'package:better_app/app/data/model/detail_book.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../helpers/date_to_string.dart';
import '../../../routes/app_pages.dart';
import '../../../services/book_service.dart';
import '../../../services/input/books/book_input.dart';

class EditBooksController extends GetxController {
  DetailBook detailBooks = Get.arguments['books'];
  TextEditingController isbnController = TextEditingController();
  TextEditingController titleController = TextEditingController();
  TextEditingController subtitleController = TextEditingController();
  TextEditingController authorController = TextEditingController();
  TextEditingController publisherController = TextEditingController();
  TextEditingController publishedController = TextEditingController();

  TextEditingController pagesController = TextEditingController();

  TextEditingController websiteController = TextEditingController();
  FocusNode isbnFocusNode = FocusNode();
  FocusNode titleFocusNode = FocusNode();
  FocusNode subtitleFocusNode = FocusNode();
  FocusNode authorFocusNode = FocusNode();
  FocusNode publisherFocusNode = FocusNode();
  

  final formKey = GlobalKey<FormState>();
  @override
  void onInit() {
    isbnController.text = detailBooks.isbn ?? "";
    titleController.text = detailBooks.title ?? "";
    subtitleController.text = detailBooks.subtitle ?? "";
    authorController.text = detailBooks.author ?? "";
    publisherController.text = detailBooks.publisher ?? "";
    publishedController.text = FormattedDate().formattingDate(
      detailBooks.published ?? DateTime.now(),
    );
    pagesController.text = detailBooks.pages.toString();
    websiteController.text = detailBooks.website ?? "";
    description = detailBooks.description.toString();

    super.onInit();
  }

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

    currentDate = pickedDate ?? DateTime.now();
    publishedController.text = FormattedDate().formattingDate(currentDate);
  }

  void toMarkDown() async {
    description =
        await Get.toNamed(Routes.MARKDOWN_EDITOR_EDIT_BOOKS, arguments: {
      "description": description,
    });

    update();
  }

  void updateBooks() async {
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
    bool isSuccessUpdateBooks = await BookService().updateBooks(
      booksInput: dataBook,
      id: Get.arguments['id'],
    );
    if (isSuccessUpdateBooks) {
      Get.back();
    } else {
      print("ada yang salah");
    }
  }
}
