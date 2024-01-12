import 'package:flutter/material.dart';
import 'package:tik_tak/responsive/responsive.dart';
import 'package:tik_tak/widgets/custom_button.dart';
import 'package:tik_tak/widgets/custom_text.dart';
import 'package:tik_tak/widgets/custom_text_field.dart';

class JoinRoomScreen extends StatefulWidget {
  static String routes = "/join-room";
  const JoinRoomScreen({super.key});

  @override
  State<JoinRoomScreen> createState() => _JoinRoomScreenState();
}

class _JoinRoomScreenState extends State<JoinRoomScreen> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _idController = TextEditingController();
  @override
  void dispose() {
    _nameController.dispose();
    _idController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
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
                text: "Join Room",
                size: 70),
            SizedBox(height: size.height * 0.08),
            CustomTextFile(
                text: "Enter your nickname", controller: _nameController),
            const SizedBox(
              height: 20,
            ),
            CustomTextFile(text: "Enter Game ID", controller: _idController),
            SizedBox(height: size.height * 0.045),
            CustomButton(ontap: () {}, text: "Create")
          ],
        ),
      ),
    ));
  }
}
