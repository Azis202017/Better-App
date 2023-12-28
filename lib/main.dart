import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'app/routes/app_pages.dart';
import 'app/shared/themes/theme.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    GetMaterialApp(
      title: "Better App",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      theme: themeData
    ),
  );
}
