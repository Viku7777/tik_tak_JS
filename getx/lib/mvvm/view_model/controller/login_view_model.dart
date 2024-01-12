import 'package:get/get.dart';
import 'package:getx/mvvm/repository/login_repository.dart';
import 'package:getx/mvvm/utils/utils.dart';

class LoginViewModel extends GetxController {
  final api = LoginRepoitory();
  RxBool loading = false.obs;

  void loginApi() {
    loading.value = true;
    api.loginApi("", "").then((value) {
      Utils.toastMessage("logged in");
      loading.value = false;
    }).onError((error, stackTrace) {
      Utils.toastMessage(error.toString());
      loading.value = false;
    });
  }
}
