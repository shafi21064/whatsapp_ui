import 'package:flutter/material.dart';
import 'package:whatsapp_ui/view/screens/sub_screen/home.dart';

class MainScreen extends StatelessWidget {
  static const String id = 'main_screen';

  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Whatsapp'),
            bottom: const TabBar(
              tabs: [
                Tab(
                  child: Icon(Icons.camera_alt),
                ),
                Tab(
                  child: Text('Chats'),
                ),
                Tab(
                  child: Text('Status'),
                ),
                Tab(
                  child: Text('Call'),
                ),
              ],
            ),
            actions: [
              const Icon(Icons.search),
              const SizedBox(
                width: 10,
              ),
              PopupMenuButton(
                icon: const Icon(Icons.more_horiz_outlined),
                  itemBuilder: (context) => [
                    const PopupMenuItem(value: 1,child: Text('New Group'),),
                    const PopupMenuItem(value: 2,child: Text('Settings'),),
                    const PopupMenuItem(value: 3,child: Text('Logout'),)
                  ]),
              const SizedBox(
                width: 10,
              ),
            ],
          ),
          body: const TabBarView(
            children: [
              Text('camera'),
              HomeScreenPage(),
              Text('status'),
              Text('call')
            ],
          ),
        ));
  }
}
