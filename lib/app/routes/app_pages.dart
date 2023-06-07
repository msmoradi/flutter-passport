import 'package:get/get.dart';
import 'package:passport/app/modules/home/bindings/home_binding.dart';
import 'package:passport/app/modules/home/views/home_view.dart';
import 'package:passport/app/modules/profile/bindings/profile_binding.dart';
import 'package:passport/app/modules/profile/views/profile_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const initial = Routes.home;

  static final routes = [
    GetPage(
      name: _Paths.home,
      page: () => const HomeView(),
      bindings: [HomeBinding()],
      participatesInRootNavigator: true,
      preventDuplicates: true,
      children: [
        GetPage(
          preventDuplicates: true,
          name: _Paths.profile,
          page: () => const ProfileView(),
          bindings: [
            ProfileBinding(),
          ],
        ),
      ],
    ),
  ];
}
