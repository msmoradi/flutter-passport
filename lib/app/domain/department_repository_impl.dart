import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:passport/app/core/model/Item_data.dart';
import 'package:passport/app/data/department_remote_datasource.dart';
import 'department_repository.dart';

class DepartmentRepositoryImpl extends DepartmentRepository {
  final DepartmentRemoteDatasource _remoteSource =
      Get.find(tag: (DepartmentRemoteDatasource).toString());

  @override
  Future<List<ItemData>> getDepartmentsData() {
    return _remoteSource.getDepartmentsData();
  }
}
