import 'package:get/get.dart';
import 'package:passport/app/domain/department_repository.dart';
import 'package:passport/app/domain/department_repository_impl.dart';

class RepositoryBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DepartmentRepository>(
      () => DepartmentRepositoryImpl(),
      tag: (DepartmentRepository).toString(),
    );
  }
}
