import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/mvvm/data/response/status.dart';
import 'package:getx/mvvm/view_model/controller/home_view_model.dart';

class HomeView extends StatefulWidget {
  static String routes = "/home_view";

  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  void initState() {
    var controller = Get.put(HomeViewModel());
    controller.fatchUser();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: GetBuilder<HomeViewModel>(
        builder: (controller) {
          switch (controller.userlist.status) {
            case Status.loading:
              return const Center(child: CircularProgressIndicator());
            case Status.completed:
              return ListView.builder(
                itemCount: controller.userlist.data!.data!.length,
                itemBuilder: (context, index) {
                  return Text(controller.userlist.data!.data![index].firstName
                      .toString());
                },
              );
            case Status.error:
              return Text(controller.userlist.message.toString());

            default:
              return const Text("Found");
          }
        },
      ),
    );
  }
}
