import 'package:getx/mvvm/data/network/network_apis.dart';
import 'package:getx/mvvm/model/user_model.dart';
import 'package:getx/mvvm/res/app_urls/urls.dart';

class HomeRepository {
  static final api = NetworkApiServices();
  Future<PostModel> userListApi() async {
    try {
      dynamic response = await api.getApi(ApiUrls.userListApi);
      return PostModel.fromJson(response);
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}
