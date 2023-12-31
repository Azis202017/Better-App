import 'package:get/get.dart';

import '../modules/add_books/bindings/add_books_binding.dart';
import '../modules/add_books/views/add_books_view.dart';
import '../modules/add_books_markdown/bindings/add_books_markdown_binding.dart';
import '../modules/add_books_markdown/views/add_books_markdown_view.dart';
import '../modules/bottom_navbar/bindings/bottom_navbar_binding.dart';
import '../modules/bottom_navbar/views/bottom_navbar_view.dart';
import '../modules/detail_books/bindings/detail_books_binding.dart';
import '../modules/detail_books/views/detail_books_view.dart';
import '../modules/edit_books/bindings/edit_books_binding.dart';
import '../modules/edit_books/views/edit_books_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/login/bindings/login_binding.dart';
import '../modules/login/views/login_view.dart';
import '../modules/markdown_editor_edit_books/bindings/markdown_editor_edit_books_binding.dart';
import '../modules/markdown_editor_edit_books/views/markdown_editor_edit_books_view.dart';
import '../modules/profile/bindings/profile_binding.dart';
import '../modules/profile/views/profile_view.dart';
import '../modules/register/bindings/register_binding.dart';
import '../modules/register/views/register_view.dart';
import '../modules/second_splash_screen/bindings/second_splash_screen_binding.dart';
import '../modules/second_splash_screen/views/second_splash_screen_view.dart';
import '../modules/splash_screen/bindings/splash_screen_binding.dart';
import '../modules/splash_screen/views/splash_screen_view.dart';
import '../modules/welcome/bindings/welcome_binding.dart';
import '../modules/welcome/views/welcome_view.dart';
import '../modules/welcome_before_login/bindings/welcome_before_login_binding.dart';
import '../modules/welcome_before_login/views/welcome_before_login_view.dart';

// ignore_for_file: constant_identifier_names

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASH_SCREEN;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.SPLASH_SCREEN,
      page: () => const SplashScreenView(),
      binding: SplashScreenBinding(),
    ),
    GetPage(
      name: _Paths.SECOND_SPLASH_SCREEN,
      page: () => const SecondSplashScreenView(),
      binding: SecondSplashScreenBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => const LoginView(),
      binding: LoginBinding(),
      children: [
        GetPage(
          name: _Paths.LOGIN,
          page: () => const LoginView(),
          binding: LoginBinding(),
        ),
      ],
    ),
    GetPage(
      name: _Paths.WELCOME,
      page: () => const WelcomeView(),
      binding: WelcomeBinding(),
    ),
    GetPage(
      name: _Paths.WELCOME_BEFORE_LOGIN,
      page: () => const WelcomeBeforeLoginView(),
      binding: WelcomeBeforeLoginBinding(),
    ),
    GetPage(
      name: _Paths.REGISTER,
      page: () => const RegisterView(),
      binding: RegisterBinding(),
    ),
    GetPage(
      name: _Paths.ADD_BOOKS,
      page: () => const AddBooksView(),
      binding: AddBooksBinding(),
    ),
    GetPage(
      name: _Paths.ADD_BOOKS_MARKDOWN,
      page: () => const AddBooksMarkdownView(),
      binding: AddBooksMarkdownBinding(),
    ),
    GetPage(
      name: _Paths.DETAIL_BOOKS,
      page: () => const DetailBooksView(),
      binding: DetailBooksBinding(),
    ),
    GetPage(
      name: _Paths.EDIT_BOOKS,
      page: () => const EditBooksView(),
      binding: EditBooksBinding(),
    ),
    GetPage(
      name: _Paths.MARKDOWN_EDITOR_EDIT_BOOKS,
      page: () => const MarkdownEditorEditBooksView(),
      binding: MarkdownEditorEditBooksBinding(),
    ),
    GetPage(
      name: _Paths.PROFILE,
      page: () => const ProfileView(),
      binding: ProfileBinding(),
    ),
    GetPage(
      name: _Paths.BOTTOM_NAVBAR,
      page: () => const BottomNavbarView(),
      binding: BottomNavbarBinding(),
    ),
  ];
}
