import 'package:flutter/material.dart';
import 'package:whatsapp_ui/view/screens/sub_screen/screen_one.dart';

class ScreenTwo extends StatelessWidget {

  static const String id = 'screen_two';

  const ScreenTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Navigation'),
      ),
      body: Center(
        child: TextButton(
          onPressed: (){
            Navigator.pop(context, ScreenOne.id);
          },
          child: const Text('Screen-2', style: TextStyle(fontSize: 20),),
        ),
      ),
    );
  }
}
