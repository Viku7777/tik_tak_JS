import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/mvvm/res/routes/routes.dart';
import 'package:getx/mvvm/view/home.dart';
import 'package:getx/mvvm/view_model/controller/login_view_model.dart';

class LoginView extends StatelessWidget {
  static String routes = "/";
  var emailcontroller = TextEditingController();
  var passwordcontroller = TextEditingController();
  LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    var controller = Get.find<LoginViewModel>();
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () {
        Get.toNamed(HomeView.routes);
      }),
      appBar: AppBar(),
      body: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          const TextField(),
          const SizedBox(
            height: 10,
          ),
          const TextField(),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
              onPressed: () {
                controller.loginApi();
              },
              child: const Text("Login"))
        ],
      ),
    );
  }
}
