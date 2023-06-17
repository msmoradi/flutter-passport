import 'package:get/get.dart';
import 'package:passport/app/core/base/base_controller.dart';
import 'package:passport/app/domain/department_repository.dart';
import 'package:passport/app/modules/about/day_model.dart';

class AboutController extends BaseController {
  final DepartmentRepository _repository =
      Get.find(tag: (DepartmentRepository).toString());

  List<DayModel> days = [
    DayModel(index: 1, title: "شنبه", isOpen: true),
    DayModel(index: 2, title: "یکشنبه", isOpen: true),
    DayModel(index: 3, title: "دوشنبه", isOpen: false),
    DayModel(index: 4, title: "سه شنبه", isOpen: true),
    DayModel(index: 5, title: "چهارشنبه", isOpen: false),
    DayModel(index: 6, title: "پنج شنبه", isOpen: true),
    DayModel(index: 7, title: "جمعه", isOpen: true)
  ];

  void onSaveDataClicked() {
    saveData(days.where((element) => element.isSelected).toList());
  }

  void saveData(List<DayModel> selectedDay) {
    callDataService(
      _repository.saveData(selectedDay.map((e) => e.index).toList()),
    );
  }
}
