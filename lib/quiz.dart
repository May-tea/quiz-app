import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz_app/constants/app_constants.dart';
import 'package:quiz_app/routes/app_pages.dart';

class Quiz extends StatelessWidget {
  const Quiz({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: AppConstants.fontFamily),
      initialRoute: Routes.start,
      getPages: AppPages.pages,
    );
  }
}
