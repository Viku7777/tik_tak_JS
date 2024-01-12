import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:getx/mvvm/res/routes/routes.dart';
import 'package:getx/mvvm/view_model/controller/home_view_model.dart';
import 'package:getx/mvvm/view_model/controller/login_view_model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: RootBinding(),
      getPages: appRoutes(),
    );
  }
}

class RootBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
      () => LoginViewModel(),
    );
    Get.lazyPut(
      () => HomeViewModel(),
    );
  }
}
