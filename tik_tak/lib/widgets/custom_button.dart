import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback ontap;
  final String text;
  const CustomButton({super.key, required this.ontap, required this.text});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      decoration: const BoxDecoration(boxShadow: [
        BoxShadow(color: Colors.blue, blurRadius: 5, spreadRadius: 0)
      ]),
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(minimumSize: Size(size.width, 50)),
          onPressed: ontap,
          child: Text(
            text,
            style: const TextStyle(fontSize: 16),
          )),
    );
  }
}
