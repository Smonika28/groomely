import 'dart:convert';
import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:groomely_seller/core/api/api_string.dart';
import 'package:groomely_seller/feature/service/add_service_screen/model/details_service_model.dart';
import 'package:groomely_seller/utils/storage/local_storage.dart';

class ApiCallingClass {
  final Dio _dio = Dio();
  LocalStorageService localStorageService = LocalStorageService();

  Future<bool> toggleService(
      {required String serviceID, required int status}) async {
    String token = await localStorageService
            .getFromDisk(LocalStorageService.ACCESS_TOKEN_KEY) ??
        "";
    Map<String, dynamic> body = {"service_id": serviceID, "status": status };
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


  // update the profile screen

   Future<bool> updateProfile(
      { String? stShopName, String? stShopEmail, String? stShopPhone, String? stOwnerName, String? stShopAddress}) async {
    String authToken = await LocalStorageService().getFromDisk(LocalStorageService.ACCESS_TOKEN_KEY);
   // List<int> imageBytes = stProfileImage.readAsBytesSync();
   // String  base64Image = base64Encode(imageBytes);
    try {
      Map data = {
        'shop_name': stShopName.toString(),
        'name': stOwnerName.toString(),
        'email': stShopEmail.toString(),
        'phone': stShopPhone.toString(),
        'shop_address': stShopAddress.toString(),
      };
      final response = await _dio.post(Apis.sellerUpdateProfile,
          data: data,
          options: Options(headers: {
            "Authorization": "Bearer $authToken",
          }));
      var jsonResponse = json.decode(response.data);
      var resMsg = jsonResponse['message'];
      if (response.statusCode == 200) {
        return true;
      } else {
        return false;
      }
    } catch (e) {
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
