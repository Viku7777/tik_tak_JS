// ignore_for_file: avoid_print, library_prefixes

import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:tik_tak/screens/create_room_screen.dart';
import 'package:tik_tak/screens/game.dart';
import 'package:tik_tak/screens/join_room_screen.dart';
import 'package:tik_tak/screens/main_screen.dart';
import 'package:tik_tak/utils/color.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        title: 'Flutter Demo',
        routes: {
          MainMenuScreen.routes: (context) => const MainMenuScreen(),
          CreateRoomScreen.routes: (context) => const CreateRoomScreen(),
          JoinRoomScreen.routes: (context) => const JoinRoomScreen(),
          GameView.routes: (context) => const GameView(),
        },
        initialRoute: MainMenuScreen.routes,
        theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: bgColor),
        home: const MainMenuScreen());
  }
}
