import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:passport/app/core/base/base_remote_source.dart';
import 'package:passport/app/core/model/Item_data.dart';
import 'package:passport/app/data/department_remote_datasource.dart';

class DepartmentRemoteDatasourceImpl extends BaseRemoteSource
    implements DepartmentRemoteDatasource {
  @override
  Future<List<ItemData>> getDepartmentsData() {
    var dioCall = dioClient.get("upload/etlo/departments.json");
    try {
      return callApiWithErrorParser(dioCall)
          .then((response) => _parseResponse(response));
    } catch (e) {
      rethrow;
    }
  }

  List<ItemData> _parseResponse(Response<dynamic> response) {
    List<ItemData> items = [];
    if (response.data['data'] != null) {
      response.data['data'].forEach((v) {
        items.add(ItemData.fromJson(v));
      });
    }
    return items;
  }

  @override
  Future saveData(List<int> selectedDay) {
    var params = {
      "selected_day": selectedDay,
    };

    var dioCall = dioClient.post(
      "upload/etlo/save_data.php",
      data: jsonEncode(params),
    );

    try {
      return callApiWithErrorParser(dioCall)
          .then((response) => _parseResponse(response));
    } catch (e) {
      rethrow;
    }
  }
}
