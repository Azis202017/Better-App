import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/detail_books_controller.dart';

class DetailBooksView extends GetView<DetailBooksController> {
  const DetailBooksView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DetailBooksView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'DetailBooksView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
