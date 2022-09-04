import 'package:flutter/material.dart';
import 'package:flutter_advanced_avatar/flutter_advanced_avatar.dart';

class profilescreen extends StatelessWidget {
  const profilescreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Profile')),
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: AdvancedAvatar(
              size: 160,
              image: NetworkImage(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQeeUl9IZDN97pBQNgeunx6dD1df-4g7vkPFw&usqp=CAU"),
            ),
          ),
        ),
        ListTile(
          title: Text("Name"),
          subtitle: Text('BemoCode'),
          leading: Icon(Icons.person),
          trailing: IconButton(
            onPressed: () {},
            icon: Icon(Icons.edit),
          ),
        ),
        ListTile(
          title: Text("About"),
          subtitle: Text('One day, i will did it'),
          leading: Icon(Icons.info),
          trailing: IconButton(
            onPressed: () {},
            icon: Icon(Icons.edit),
          ),
        ),
        ListTile(
          title: Text("phone"),
          subtitle: Text('+201032594299'),
          leading: Icon(Icons.phone),
          trailing: IconButton(
            onPressed: () {},
            icon: Icon(Icons.edit),
          ),
        ),
      ]),
    );
  }
}
