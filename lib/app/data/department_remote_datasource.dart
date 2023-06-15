import 'package:passport/app/core/model/Item_data.dart';

abstract class DepartmentRemoteDatasource {
  Future<List<ItemData>> getDepartmentsData();
}