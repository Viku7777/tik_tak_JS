import 'package:getx/mvvm/data/network/network_apis.dart';
import 'package:getx/mvvm/res/app_urls/urls.dart';

class LoginRepoitory {
  final apiservices = NetworkApiServices();
  Future<dynamic> loginApi(String email, String password) async {
    var data = {"email": "eve.holt@reqres.in", "password": "cityslicka"};
    dynamic response = await apiservices.post(ApiUrls.loginApis, data);
    return response;
  }
}
