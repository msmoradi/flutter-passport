import 'package:get/get.dart';
import 'package:passport/app/modules/about/controllers/about_controller.dart';
import 'package:passport/app/modules/achievement/controllers/achievement_controller.dart';
import 'package:passport/app/modules/home/controllers/home_controller.dart';
import 'package:passport/app/modules/team/controllers/team_controller.dart';

class HomeBinding extends Bindings {

  @override
  void dependencies() {
    Get.lazyPut<HomeController>(
          () => HomeController(),
    );
    Get.lazyPut<TeamController>(
          () => TeamController(),
    );
    Get.lazyPut<AchievementController>(
          () => AchievementController(),
    );
    Get.lazyPut<AboutController>(
          () => AboutController(),
    );
  }
}
