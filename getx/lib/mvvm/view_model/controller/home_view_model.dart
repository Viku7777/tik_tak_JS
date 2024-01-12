import 'package:get/get.dart';
import 'package:getx/mvvm/data/response/api_response.dart';
import 'package:getx/mvvm/data/response/status.dart';
import 'package:getx/mvvm/model/user_model.dart';
import 'package:getx/mvvm/repository/home_repository.dart';

class HomeViewModel extends GetxController {
  final api = HomeRepository();
  ApiResponse<PostModel> userlist = ApiResponse.loading();
  updateList(ApiResponse<PostModel> data) {
    userlist = data;
    update();
  }

  Future<void> fatchUser() async {
    updateList(ApiResponse.loading());
    api.userListApi().then((value) {
      updateList(ApiResponse.completed(value));
    }).onError((error, stackTrace) {
      print(error);
      updateList(ApiResponse.error(error.toString()));
    });
  }
}
