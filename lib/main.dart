import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:passport/app/routes/app_pages.dart';

void main() {
  runApp(
    GetMaterialApp(
      title: "Flutter Application",
      getPages: AppPages.routes,
      initialRoute: AppPages.initial,
    ),
  );
}
