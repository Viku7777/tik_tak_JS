// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/instance_manager.dart';
import 'package:tik_tak/resources/socket_client.dart';
import 'package:tik_tak/resources/socket_methods.dart';
import 'package:tik_tak/responsive/responsive.dart';
import 'package:tik_tak/widgets/custom_button.dart';
import 'package:tik_tak/widgets/custom_text.dart';
import 'package:tik_tak/widgets/custom_text_field.dart';

class CreateRoomScreen extends StatefulWidget {
  static String routes = "/create-room";

  const CreateRoomScreen({super.key});

  @override
  State<CreateRoomScreen> createState() => _CreateRoomScreenState();
}

class _CreateRoomScreenState extends State<CreateRoomScreen> {
  SocketMethods socket = SocketMethods();
  var controller = Get.put(AllSockets());

  final TextEditingController _nameController = TextEditingController();

  @override
  void initState() {
    controller.initSockets();
    socket.createRoomListner(context);
    super.initState();
  }

  @override
  void dispose() {
    _nameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    SocketMethods methods = SocketMethods();
    Size size = MediaQuery.of(context).size;

    return Scaffold(
        body: Responsive(
      child: Container(
        margin: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const CustomText(
                shadows: [Shadow(blurRadius: 40, color: Colors.blue)],
                text: "Create Room",
                size: 70),
            SizedBox(height: size.height * 0.08),
            CustomTextFile(
                text: "Enter your nickname", controller: _nameController),
            SizedBox(height: size.height * 0.045),
            GetBuilder<AllSockets>(
              builder: (controller) {
                return controller.isConncted
                    ? CustomButton(
                        ontap: () {
                          methods.createRoom(_nameController.text);
                        },
                        text: "Create")
                    : const Center(
                        child: CircularProgressIndicator(),
                      );
              },
            )
          ],
        ),
      ),
    ));
  }
}


//set state
// variable
// button
