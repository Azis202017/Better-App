import 'package:better_app/app/data/model/book.dart';
import 'package:better_app/app/services/book_service.dart';
import 'package:get/get.dart';

import '../../../data/model/user.dart';
import '../../../services/user_service.dart';

class HomeController extends GetxController {
 
  User? user = User();
  List<Book> books = [];
  bool isLoading = true;
  @override
  void onInit() {
    super.onInit();
    fetchUser();
    fetchAllBooks();
  }

  Future<void> fetchUser() async {
    user = await UserService().fetchUser();
    update();
  }
  void fetchAllBooks() async{
    books = await BookService().fetchAllBooks();
    isLoading = false;

    update();
  }
}
