import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';
import 'package:tik_tak/resources/socket_client.dart';
import 'package:tik_tak/screens/game.dart';

class SocketMethods {
  var controller = Get.put(AllSockets());

  void createRoom(
    String nickname,
  ) {
    if (nickname.isNotEmpty) {
      controller.socket.emit("craeteRoom", {
        "nickName": nickname,
      });
    }
  }

  void createRoomListner(BuildContext context) {
    controller.socket.on("roomcreate",
        (data) => Navigator.of(context).pushNamed(GameView.routes));
  }
}
