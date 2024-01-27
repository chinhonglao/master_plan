import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:master_plan/page/main_page/main_page.dart';
import 'package:master_plan/route/app_page.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      getPages: AppPages.pages,
      home: const MainPage(),
    );
  }
}
