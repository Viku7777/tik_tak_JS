import 'package:flutter/material.dart';
import 'package:tik_tak/utils/color.dart';

class Responsive extends StatelessWidget {
  final Widget child;
  const Responsive({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
        color: bgColor,
        alignment: Alignment.center,
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 600),
          child: child,
        ));
  }
}
