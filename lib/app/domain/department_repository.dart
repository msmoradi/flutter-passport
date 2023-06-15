import 'package:passport/app/core/model/Item_data.dart';

abstract class DepartmentRepository {
  Future<List<ItemData>> getDepartmentsData();
}
