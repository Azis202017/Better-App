import 'package:flutter/material.dart';

import 'get_image.dart';

class CardImage extends StatelessWidget {
  const CardImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding:
          EdgeInsets.only(right: 8.0),
      child: GetImage(
        width: 240,
        height: 240,
        image: 'books1',
        fit: BoxFit.cover,
      ),
    );
  }
}
