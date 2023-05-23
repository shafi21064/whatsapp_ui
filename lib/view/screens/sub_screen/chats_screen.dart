import 'package:flutter/material.dart';

class ChatsScreenPage extends StatelessWidget {
  static const String id = 'home';

  const ChatsScreenPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 50,
      itemBuilder: (context, index) {
        return ListTile(
          leading: const CircleAvatar(
            backgroundImage: NetworkImage(
                'https://cdn.pixabay.com/photo/2017/06/13/13/06/girl-2398822_960_720.jpg'),
            minRadius: 15,
            maxRadius: 23,
          ),
          title: const Text('MD Shadikul Islam Shafi'),
          subtitle: Row(
            children: [
              Icon(index % 4 == 0 ? Icons.done : Icons.done_all,
                  size: 16, color: index % 4 == 0 ? Colors.grey : Colors.blue),
              const Text('App developer'),
            ],
          ),
          trailing: const Text('3:15 pm'),
        );
      },
    );
  }
}
