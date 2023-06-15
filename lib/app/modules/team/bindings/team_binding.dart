import 'package:get/get.dart';
import 'package:passport/app/modules/team/controllers/team_controller.dart';

class TeamBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TeamController>(
      () => TeamController(),
    );
  }
}
