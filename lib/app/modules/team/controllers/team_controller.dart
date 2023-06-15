import 'package:get/get.dart';
import 'package:passport/app/core/base/base_controller.dart';
import 'package:passport/app/core/model/Item_data.dart';
import 'package:passport/app/domain/department_repository.dart';

class TeamController extends BaseController {
  final DepartmentRepository _repository =
      Get.find(tag: (DepartmentRepository).toString());

  final RxList<ItemData> _projectUiData = RxList.empty();

  List<ItemData> get projectUiData => _projectUiData.value;

  @override
  void onInit() {
    getData();
    super.onInit();
  }

  void getData() {
    callDataService(
      _repository.getDepartmentsData(),
      onSuccess: _handleProjectDetailsResponseSuccess,
    );
  }

  void _handleProjectDetailsResponseSuccess(List<ItemData> project) {
    _projectUiData(project);
  }
}
