import 'package:better_app/app/data/model/detail_book.dart';
import 'package:better_app/app/helpers/alert_success.dart';
import 'package:better_app/app/services/book_service.dart';
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
    bool isDeletedSuccess =
        await BookService().deleteBooks(id: Get.arguments['id']);
    if (isDeletedSuccess) {
      Get.back();
      alertSuccess(
        title: "Success Delete Books",
        subtitle: "Whoa delete success.",
      );
    } else {
       alertError(
        title: "Opss something is wrong",
        subtitle: "We dont find the id of the books",
      );
    }
    Get.back();
  }
}
