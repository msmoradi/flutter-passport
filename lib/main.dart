import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/route_manager.dart';
import 'package:passport/app/core/theme/app_bar_theme.dart';
import 'package:passport/app/core/theme/tab_bar_theme.dart';
import 'package:passport/app/routes/app_pages.dart';

void main() {
  runApp(
    GetMaterialApp(
      title: "Flutter Application",
      localizationsDelegates: const [
        GlobalCupertinoLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale("fa", "IR"),
      ],
      locale: const Locale("fa", "IR"),
      theme: ThemeData(
          useMaterial3: true,
          tabBarTheme: PassportTabBarTheme.lightTabBarTheme,
          appBarTheme: PassportAppBarTheme.lightAppBarTheme,
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.green)),
      getPages: AppPages.routes,
      initialRoute: AppPages.initial,
    ),
  );
}
