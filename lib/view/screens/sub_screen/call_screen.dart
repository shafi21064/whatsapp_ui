import 'package:flutter/material.dart';

class CallScreenPage extends StatelessWidget {
  static const String id = 'screen_two';

  const CallScreenPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 20,
      itemBuilder: (context, index) {
        return ListTile(
          leading: const CircleAvatar(
            backgroundImage: NetworkImage(
                'https://cdn.pixabay.com/photo/2017/06/13/13/06/girl-2398822_960_720.jpg'),
            minRadius: 15,
            maxRadius: 23,
          ),
          title: const Text('MD Shadikul Islam Shafi'),
          subtitle: index % 3 == 0
              ? const Text('You have missed a audio call')
              : const Text('You have missed a video call'),
          trailing: index % 3 == 0
              ? const Icon(Icons.phone)
              : const Icon(Icons.video_call),
        );
      },
    );
  }
}
