import 'package:get/get.dart';
import 'package:passport/app/data/department_remote_datasource.dart';
import 'package:passport/app/data/department_remote_datasource_impl.dart';

class RemoteSourceBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DepartmentRemoteDatasource>(
      () => DepartmentRemoteDatasourceImpl(),
      tag: (DepartmentRemoteDatasource).toString(),
    );
  }
}
