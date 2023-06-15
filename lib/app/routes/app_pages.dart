import 'package:get/get.dart';
import 'package:passport/app/modules/about/bindings/about_binding.dart';
import 'package:passport/app/modules/about/views/about_view.dart';
import 'package:passport/app/modules/achievement/bindings/achievement_binding.dart';
import 'package:passport/app/modules/achievement/views/achievement_view.dart';
import 'package:passport/app/modules/home/bindings/home_binding.dart';
import 'package:passport/app/modules/home/views/home_view.dart';
import 'package:passport/app/modules/team/bindings/team_binding.dart';
import 'package:passport/app/modules/team/views/team_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const initial = Routes.home;

  static final routes = [
    GetPage(
      name: _Paths.home,
      page: () => const HomeView(),
      binding: HomeBinding(),
      participatesInRootNavigator: true,
      preventDuplicates: true,
      children: [
        GetPage(
          preventDuplicates: true,
          name: _Paths.about,
          page: () => const AboutView(),
          binding: AboutBinding(),
        ),
        GetPage(
          preventDuplicates: true,
          name: _Paths.achievement,
          page: () => const AchievementView(),
          binding: AchievementBinding(),
        ),
        GetPage(
          preventDuplicates: true,
          name: _Paths.team,
          page: () => TeamView(),
          binding: TeamBinding(),
        ),
      ],
    ),
  ];
}
