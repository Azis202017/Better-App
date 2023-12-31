import 'package:flutter/material.dart';

import '../../data/model/book.dart';
import '../themes/color.dart';
import '../themes/font.dart';
import 'get_image.dart';

class CardText extends StatelessWidget {
  final String image;
  const CardText({
    super.key,
    required this.book,
    required this.image,
  });

  final Book book;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GetImage(
            width: 170,
            height: 226,
            image: image,
            fit: BoxFit.fill,
          ),
          Text(
            '${book.title}',
            style: p3Medium.copyWith(
              color: secondarySteelColor,
            ),
          ),
        ],
      ),
    );
  }
}
