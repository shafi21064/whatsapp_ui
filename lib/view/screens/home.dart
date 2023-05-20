import 'package:flutter/material.dart';

class HomeScreenPage extends StatelessWidget {
  const HomeScreenPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("WhatsApp Ui",),
        backgroundColor: Colors.teal,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) {
                return const ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://cdn.pixabay.com/photo/2017/06/13/13/06/girl-2398822_960_720.jpg'),
                  ),
                  title: Text('MD Shadikul Islam Shafi'),
                  subtitle: Text('App developer'),
                  trailing: Text('3.15'),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
