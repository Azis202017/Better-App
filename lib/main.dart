import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:intl/date_symbol_data_local.dart';

import 'app/routes/app_pages.dart';
import 'app/shared/themes/theme.dart';

void main() async {
  await GetStorage.init();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  WidgetsFlutterBinding.ensureInitialized();
 
  await initializeDateFormatting('id_ID', null).then(
    (_) => runApp(
      GetMaterialApp(
        title: "Better App",
        initialRoute: AppPages.INITIAL,
        getPages: AppPages.routes,
        theme: themeData,
      ),
    ),
  );
}
