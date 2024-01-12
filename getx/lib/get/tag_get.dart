// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/get/controller.dart';

class GetTags extends StatelessWidget {
  const GetTags({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      floatingActionButton: FloatingActionButton(onPressed: () {
        var con = Get.find<CountController>(tag: "vixh");
        con.updatecount();
      }),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          GetBuilder<CountController>(
            init: CountController(),
            builder: (c) => Text(c.count.toString()),
          ),
          GetBuilder<CountController>(
            init: CountController(),
            tag: "vixh",
            builder: (c) => Text(c.count.toString()),
          )
        ],
      ),
    );
  }
}
