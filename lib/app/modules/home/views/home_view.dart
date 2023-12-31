import 'package:better_app/app/data/model/book.dart';
import 'package:better_app/app/shared/themes/color.dart';
import 'package:better_app/app/shared/themes/font.dart';
import 'package:better_app/app/shared/widgets/center_loading.dart';
import 'package:better_app/app/shared/widgets/empty_state.dart';
import 'package:better_app/app/shared/widgets/get_image.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../../../shared/widgets/card_image.dart';
import '../../../shared/widgets/card_with_subtitle_title.dart';
import '../../../shared/widgets/card_with_text.dart';
import '../../../shared/widgets/heading_home.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(builder: (context) {
      return SafeArea(
        child: controller.isLoading
            ? const CenterLoading()
            : Scaffold(
                body: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(
                          20,
                        ),
                        width: double.infinity,
                        color: primaryBetterColor,
                        child: HeadingHome(
                          name: controller.user?.name ?? "",
                        ),
                      ),
                      controller.books.isEmpty
                          ? EmptyState(
                              title: 'Empty Books',
                              subtitle:
                                  'Whoaa you don\'t have any books you can refresh or create books in right bottom button',
                              onTap: () => controller.fetchAllBooks(),
                            )
                          : Container(
                              margin: const EdgeInsets.symmetric(
                                horizontal: 20,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                    'Collections',
                                    style: t8,
                                  ),
                                  const SizedBox(
                                    height: 24,
                                  ),
                                  SizedBox(
                                    height: 240,
                                    child: ListView.builder(
                                      itemCount: controller.books.length,
                                      scrollDirection: Axis.horizontal,
                                      itemBuilder: (_, index) {
                                        final book = controller.books[index];

                                        return GestureDetector(
                                          onTap: () => Get.toNamed(
                                            Routes.DETAIL_BOOKS,
                                            arguments: {"id": book.id},
                                          )?.then((value) =>
                                              controller.fetchAllBooks()),
                                          child: const CardImage(),
                                        );
                                      },
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 32,
                                  ),
                                  Text(
                                    'Visual Explainers',
                                    style: t8,
                                  ),
                                  const SizedBox(
                                    height: 24,
                                  ),
                                  SizedBox(
                                    height: 224,
                                    child: ListView.builder(
                                      itemCount: controller.books.length,
                                      scrollDirection: Axis.horizontal,
                                      itemBuilder: (_, index) {
                                        final book = controller.books[index];
                                        return GestureDetector(
                                          onTap: () => Get.toNamed(
                                            Routes.DETAIL_BOOKS,
                                            arguments: {"id": book.id},
                                          )?.then((value) =>
                                              controller.fetchAllBooks()),
                                          child:
                                              CardWithTitleSubtitle(book: book),
                                        );
                                      },
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 32,
                                  ),
                                  Text(
                                    'Today For you',
                                    style: t8,
                                  ),
                                  const SizedBox(
                                    height: 24,
                                  ),
                                  SizedBox(
                                    height: 260,
                                    child: ListView.builder(
                                      itemCount: controller.books.length,
                                      scrollDirection: Axis.horizontal,
                                      itemBuilder: (_, index) {
                                        final book = controller.books[index];
                                        return CardText(
                                          book: book,
                                          image: 'books3',
                                        );
                                      },
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 32,
                                  ),
                                  Text(
                                    'To have more money',
                                    style: t8,
                                  ),
                                  const SizedBox(
                                    height: 24,
                                  ),
                                  SizedBox(
                                    height: 260,
                                    child: ListView.builder(
                                      itemCount: controller.books.length,
                                      scrollDirection: Axis.horizontal,
                                      itemBuilder: (_, index) {
                                        final book = controller.books[index];
                                        return GestureDetector(
                                          onTap: () => Get.toNamed(
                                            Routes.DETAIL_BOOKS,
                                            arguments: {
                                              "id": book.id,
                                            },
                                          )?.then((value) =>
                                              controller.fetchAllBooks()),
                                          child: CardText(
                                            book: book,
                                            image: 'books4',
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ),
                    ],
                  ),
                ),
                floatingActionButton: FloatingActionButton(
                  onPressed: () {
                    Get.toNamed(Routes.ADD_BOOKS)
                        ?.then((_) => controller.fetchAllBooks());
                  },
                  child: const Icon(
                    Icons.book,
                  ),
                ),
              ),
      );
    });
  }
}

