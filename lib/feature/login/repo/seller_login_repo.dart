import 'package:groumally/core/api/api_string.dart';
import 'package:groumally/feature/login/model/seller_login_res_model.dart';
import 'package:groumally/utils/APi/api_provider.dart';

class LoginRepository{
  final apiProvider = ApiProvider();
  SellerLoginModel sellerLoginModel = SellerLoginModel();
  Future<dynamic> getLogin(Map<String,dynamic> reqModel){
    return apiProvider.dataProcessor(reqModel, sellerLoginModel,Apis.login);
  }
}
class NetworkError extends Error {}