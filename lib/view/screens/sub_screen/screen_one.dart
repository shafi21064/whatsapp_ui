import 'package:flutter/material.dart';
import 'package:whatsapp_ui/view/screens/sub_screen/chats_screen.dart';
import 'package:whatsapp_ui/view/screens/sub_screen/screen_two.dart';

class ScreenOne extends StatelessWidget {
  static const String id = 'screen_one';

  const ScreenOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Navigation'),
        backgroundColor: Colors.teal,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children:  [
            const UserAccountsDrawerHeader(
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(
                          'https://cdn.pixabay.com/photo/2017/06/13/13/06/girl-2398822_960_720.jpg'),
                ),
                accountName: Text('Md Shadikul Islam Shafi'),
                accountEmail: Text('mdshadikulislamshafi@gmail.com'),
              decoration: BoxDecoration(
                color: Colors.teal
              ),
            ),
            
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Home'),
              trailing: const Icon(Icons.arrow_forward),
              onTap: (){
                Navigator.pushNamed(context, ChatsScreenPage.id);
              },
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Home'),
              trailing: const Icon(Icons.arrow_forward),
              onTap: (){
                Navigator.pushNamed(context, ScreenOne.id);
              },
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Home'),
              trailing: const Icon(Icons.arrow_forward),
              onTap: (){
                Navigator.pushNamed(context, ScreenTwo.id);
              },
            )
          ],
        ),
      ),
      body: Center(
        child: TextButton(
          onPressed: () {
            Navigator.pushNamed(context, ScreenTwo.id);
          },
          child: const Text(
            'Screen-1',
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
}
