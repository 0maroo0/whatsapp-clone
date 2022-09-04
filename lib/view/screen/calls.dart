import 'package:flutter/material.dart';
import 'package:flutter_advanced_avatar/flutter_advanced_avatar.dart';
import 'package:whatclone/lists/liststatus.dart';

class callsscreen extends StatelessWidget {
  const callsscreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: liststatus.length,
      itemBuilder: ((context, i) {
        return ListTile(
          title: Text(liststatus[i].name),
          leading: AdvancedAvatar(
            size: 55,
            image: NetworkImage(liststatus[i].image),
          ),
          subtitle: Text("2 min ago"),
          trailing: Icon(
            Icons.missed_video_call,
            size: 40,
            color: Colors.red,
          ),
        );
      }),
    );
  }
}
