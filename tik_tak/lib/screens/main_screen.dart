import 'package:flutter/material.dart';
import 'package:tik_tak/responsive/responsive.dart';
import 'package:tik_tak/screens/create_room_screen.dart';
import 'package:tik_tak/screens/join_room_screen.dart';
import 'package:tik_tak/widgets/custom_button.dart';

class MainMenuScreen extends StatefulWidget {
  static String routes = "/main-menu";
  const MainMenuScreen({super.key});

  @override
  State<MainMenuScreen> createState() => _MainMenuScreenState();
}

class _MainMenuScreenState extends State<MainMenuScreen> {
  createRoom() => Navigator.pushNamed(context, CreateRoomScreen.routes);
  joinRoom() => Navigator.pushNamed(context, JoinRoomScreen.routes);

  @override
  Widget build(BuildContext context) {
    return Responsive(
      child: Scaffold(
          body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomButton(ontap: createRoom, text: "Create Room"),
            const SizedBox(
              height: 20,
            ),
            CustomButton(ontap: joinRoom, text: "Join Room"),
          ],
        ),
      )),
    );
  }
}
