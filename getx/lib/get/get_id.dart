import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/get/controller.dart';

class GETID extends StatefulWidget {
  const GETID({super.key});

  @override
  State<GETID> createState() => _GETIDState();
}

class _GETIDState extends State<GETID> {
  @override
  Widget build(BuildContext context) {
    var con = Get.find<CountController>();

    return Scaffold(
      appBar: AppBar(),
      floatingActionButton: FloatingActionButton(onPressed: () {
        con.updatecount(ids: ["112"]);
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
            id: "112",
            builder: (c) => Text(c.count.toString()),
          )
        ],
      ),
    );
  }
}
