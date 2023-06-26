import 'dart:convert';
import 'dart:math';

import 'package:dio/dio.dart';
import 'package:groumally/core/api/api_string.dart';
import 'package:groumally/feature/service/add_service_screen/model/details_service_model.dart';
import 'package:groumally/utils/APi/api_provider.dart';
import 'package:groumally/utils/storage/local_storage.dart';

class ApiCallingClass {
  final Dio _dio = Dio();
  LocalStorageService localStorageService = LocalStorageService();

  Future<bool> toggleService(
      {required String serviceID, required bool Status}) async {
    String token = await localStorageService
            .getFromDisk(LocalStorageService.ACCESS_TOKEN_KEY) ??
        "";
    Map<String, dynamic> body = {"service_id": serviceID, "status": 1};
    final response = await _dio.post(Apis.toggleService,
        data: body,
        options: Options(headers: {
          "Authorization": "Bearer $token",
        }));
    if (response.statusCode == 200) {
      return true;
    } else {
      return false;
    }
  }


  Future<ServiceFieldModel> fetchFieldByServiceId(
      {required String serviceID}) async {
    String token = await localStorageService
            .getFromDisk(LocalStorageService.ACCESS_TOKEN_KEY) ??
        "";
    Map<String, dynamic> data = {"service_id": serviceID};
    final response = await _dio.post(Apis.serviceDetailById,
        data: data,
        options: Options(headers: {
          "Authorization": "Bearer $token",
        }));
    if (response.statusCode == 200) {
      print("field data--> ${response.data}");
        return ServiceFieldModel.fromJson(jsonDecode(response.data));
    } else {
        return ServiceFieldModel();
    }
  }
}
