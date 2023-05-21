import 'package:flutter/material.dart';
import 'package:whatsapp_ui/view/screens/home.dart';
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
      theme: ThemeData(),
      initialRoute: ScreenOne.id,
      routes: {
        ScreenOne.id: (context) => const ScreenOne(),
        ScreenTwo.id: (context) => const ScreenTwo(),
        HomeScreenPage.id: (context) => const HomeScreenPage(),
      },
    );
  }
}
