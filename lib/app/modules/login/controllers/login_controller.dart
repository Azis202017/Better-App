import 'package:better_app/app/data/model/detail_book.dart';
import 'package:better_app/app/data/model/user.dart';
import 'package:better_app/app/helpers/date_to_string.dart';
import 'package:better_app/app/services/authentication_service.dart';
import 'package:better_app/app/services/book_service.dart';
import 'package:better_app/app/services/input/authentication/register_input.dart';
import 'package:get/get.dart';

import '../../../data/model/book.dart';
import '../../../services/input/authentication/login_input.dart';
import '../../../services/input/books/book_input.dart';
import '../../../services/user_service.dart';

class LoginController extends GetxController {
  DetailBook? user = DetailBook();
  List<Book> listOfBooks = [];
  void login() async {
    LoginInput loginInput =
        LoginInput(email: 'aaa@gmail.com', password: 'test1234');
    bool isLogin = await AuthenticationService().login(loginInput: loginInput);
    print(isLogin);
  }

  void register() async {
    BookInput bookInput = BookInput(
      isbn: "123456789",
      title: "aaa",
      description: "aaa",
      author: "aaa",
      pages: 1,
      published:
          FormattedDate().formattedDateToString(dateTime: DateTime.now()),
      publisher: "aaa",
      subtitle: "aaa",
      website: "aaa",
    );
    bool isLogout = await BookService().createBooks(
      booksInput: bookInput,
    );
    print(isLogout);
  }

  void getUser() async {
   listOfBooks = await BookService().fetchAllBooks();
    print(listOfBooks);
  }
}
