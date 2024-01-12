import 'package:flutter/material.dart';
import 'package:tik_tak/utils/color.dart';

class CustomTextFile extends StatelessWidget {
  final String text;
  final TextEditingController controller;
  const CustomTextFile(
      {super.key, required this.text, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(boxShadow: [
        BoxShadow(color: Colors.blue, blurRadius: 5, spreadRadius: 2)
      ]),
      child: TextField(
        controller: controller,
        decoration:
            InputDecoration(fillColor: bgColor, filled: true, hintText: text),
      ),
    );
  }
}
