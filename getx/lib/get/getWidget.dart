import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/get/controller.dart';

// we can use getview but when we want to listen where we need to use obx
class CountView extends GetWidget<CountController> {
  const CountView({super.key});

  @override
  Widget build(BuildContext context) {
    var con = Get.find<CountController>();

    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () {
        controller.updatecount();
      }),
      appBar: AppBar(
        title: const Text("Count"),
      ),
      body: Center(
          child: GetBuilder<CountController>(
        builder: (c) => Text(controller.count.toString()),
      )),
    );
  }
}
