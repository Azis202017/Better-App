import 'package:flutter/material.dart';

import '../../data/model/book.dart';
import '../themes/color.dart';
import '../themes/font.dart';
import 'get_image.dart';

class CardWithTitleSubtitle extends StatelessWidget {
  const CardWithTitleSubtitle({
    super.key,
    required this.book,
  });

  final Book book;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const GetImage(
            width: 170,
            height: 170,
            image: 'books2',
            fit: BoxFit.cover,
          ),
          Text(
            '${book.title}',
            style: p4Medium,
          ),
          Text(
            '${book.author}',
            style: p5.copyWith(
              color: secondarySteelColor,
            ),
          ),
        ],
      ),
    );
  }
}

