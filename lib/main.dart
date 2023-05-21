import 'package:flutter/material.dart';
import 'package:whatsapp_ui/view/screens/main_screen.dart';
import 'package:whatsapp_ui/view/screens/sub_screen/chats_screen.dart';
import 'package:whatsapp_ui/view/screens/sub_screen/screen_one.dart';
import 'package:whatsapp_ui/view/screens/sub_screen/screen_two.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.teal
      ),
      initialRoute: MainScreen.id,
      routes: {
        MainScreen.id: (context) => const MainScreen(),
        ScreenOne.id: (context) => const ScreenOne(),
        ScreenTwo.id: (context) => const ScreenTwo(),
        ChatsScreenPage.id: (context) => const ChatsScreenPage(),
      },
    );
  }
}
