import 'package:flutter/material.dart';

class ChatsScreenPage extends StatelessWidget {

  static const String id = 'home';

  const ChatsScreenPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      itemBuilder: (context, index) {
        return const ListTile(
          leading: CircleAvatar(
            backgroundImage: NetworkImage(
                'https://cdn.pixabay.com/photo/2017/06/13/13/06/girl-2398822_960_720.jpg'),
          ),
          title: Text('MD Shadikul Islam Shafi'),
          subtitle: Text('App developer'),
          trailing: Text('3:15 pm'),
        );
      },
    );
  }
}
