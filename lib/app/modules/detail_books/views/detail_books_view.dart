import 'package:better_app/app/helpers/date_to_string.dart';
import 'package:better_app/app/routes/app_pages.dart';
import 'package:better_app/app/shared/themes/color.dart';
import 'package:better_app/app/shared/widgets/center_loading.dart';
import 'package:better_app/app/shared/widgets/get_image.dart';
import 'package:better_app/app/shared/widgets/outlined_primary_button.dart';
import 'package:better_app/app/shared/widgets/primary_button.dart';
import 'package:better_app/app/shared/widgets/subtitle_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_linkify/flutter_linkify.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../shared/themes/font.dart';
import '../controllers/detail_books_controller.dart';

class DetailBooksView extends GetView<DetailBooksController> {
  const DetailBooksView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetBuilder<DetailBooksController>(builder: (_) {
      return controller.isLoading
          ? const CenterLoading()
          : Scaffold(
              appBar: AppBar(
                title: const Text(
                  'Detail books',
                ),
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
                        height: 20,
                      ),
                      const GetImage(image: 'books1'),
                      const SizedBox(
                        height: 8,
                      ),
                      Text(
                        "Author : ${controller.detailBook?.author}",
                        style: p3Bold,
                      ),
                      Text(
                        'No ISBN :  ${controller.detailBook?.isbn}',
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  controller.detailBook?.title ?? "",
                                  style: t7,
                                ),
                                SubtitleText(
                                  subtitle: controller.detailBook?.author ?? "",
                                ),
                              ],
                            ),
                          ),
                          Text(
                            FormattedDate().formattingDate(
                                controller.detailBook?.published ??
                                    DateTime.now()),
                            style: p5,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Description",
                        style: t7,
                      ),
                      MarkdownBody(
                        data: "${controller.detailBook?.description}",
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Text(
                        "Pages: ${controller.detailBook?.pages}",
                        style: p4.copyWith(
                          color: grey600Color,
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Linkify(
                        onOpen: (link) async {
                          if (!await launchUrl(Uri.parse(link.url))) {
                            throw Exception('Could not launch ${link.url}');
                          }
                        },
                        text:
                            "Link website:  ${controller.detailBook?.website}",
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Text(
                        'Published By :  ${controller.detailBook?.publisher}',
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                    ],
                  ),
                ),
              ),
              bottomNavigationBar: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    Expanded(
                      child: OutlinedPrimaryButton(
                        title: 'Delete Books',
                        onPressed: controller.deleteBook,
                        borderColor: otherCodmiumRedColor,
                        foregroundColor: otherCodmiumRedColor,
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: PrimaryButton(
                        title: 'Edit Books',
                        onPressed: () => Get.toNamed(
                          Routes.EDIT_BOOKS,
                          arguments: {
                            "id": controller.detailBook?.id,
                            'books': controller.detailBook
                          },
                        )?.then((value) => controller.fetchDetailBook()),
                      ),
                    ),
                  ],
                ),
              ),
            );
    });
  }
}
