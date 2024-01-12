// ignore_for_file: avoid_print, library_prefixes

import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:socket_io_client/socket_io_client.dart' as IO;

class AllSockets extends GetxController {
  bool isConncted = false;
  late IO.Socket socket;
  updateStauts() {
    isConncted = !isConncted;
    update();
  }

  initSockets({String url = "http://localhost:4500"}) {
    socket =
        IO.io(url, IO.OptionBuilder().setTransports(["websocket"]).build());
    print("start Connecting....");
    socket.onConnect((data) {
      if (!isConncted) {
        updateStauts();
      }
      print("Connected with Socket");
    });
    socket.onConnectError((data) => print("Connection Error $data"));
    socket.onDisconnect((data) {
      if (isConncted) {
        updateStauts();
      }
      print("Disconnected");
    });
  }
}
