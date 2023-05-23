import 'package:flutter/material.dart';

class StatusScreenPage extends StatelessWidget {
  const StatusScreenPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
          return ListTile(
            leading: index / 2 == 0
                ? const Stack(
                    children: [
                      CircleAvatar(
                          backgroundImage: NetworkImage(
                              'https://cdn.pixabay.com/photo/2017/06/13/13/06/girl-2398822_960_720.jpg'),
                          minRadius: 20,
                          maxRadius: 30,
                          child: Align(
                              alignment: Alignment.bottomRight,
                              child: Icon(
                                Icons.add_a_photo_sharp,
                                size: 20,
                                color: Colors.teal,
                              ))),
                    ],
                  )
                : Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                            color: index % 3 == 0 ? Colors.grey : Colors.green,
                            width: 3)),
                    child: const CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://cdn.pixabay.com/photo/2017/06/13/13/06/girl-2398822_960_720.jpg'),
                      minRadius: 15,
                      maxRadius: 20,
                    ),
                  ),
            title: index / 2 == 0
                ? const Text('My status')
                : const Text('Md Shadikul Islam Shafi'),
            subtitle: index / 2 == 0
                ? const Text('Tap to add status update')
                : const Text('Tap to see'),
          );
        });
  }
}
