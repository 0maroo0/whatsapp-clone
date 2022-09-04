import 'package:flutter/material.dart';
import 'package:flutter_advanced_avatar/flutter_advanced_avatar.dart';
import 'package:get/get.dart';
import 'package:whatclone/view/screen/settingscreens/profile.dart';

class settingscreen extends StatelessWidget {
  const settingscreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("setting")),
      body: Container(
        child: Column(children: [
          Container(
            child: ListTile(
              onTap: () {
                Get.to(() => profilescreen());
              },
              title: Text('BemoCode'),
              subtitle: Text('لا تقارن بدايتك بمواسم حصاد الاخرين',
                  style: TextStyle(fontWeight: FontWeight.bold)),
              leading: AdvancedAvatar(
                size: 55,
                image: NetworkImage(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQeeUl9IZDN97pBQNgeunx6dD1df-4g7vkPFw&usqp=CAU"),
              ),
              trailing: Icon(Icons.qr_code),
            ),
          ),
          Divider(height: 3, color: Colors.grey),
          Container(
            height: 600,
            child: ListView(
              children: const [
                ListTile(
                  title: Text('Account'),
                  subtitle: Text('privcy, securty, change number',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  leading: Icon(Icons.key),
                ),
                ListTile(
                  title: Text('Chats'),
                  subtitle: Text('themes, background screen',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  leading: Icon(Icons.chat),
                ),
                ListTile(
                  title: Text('notifcation'),
                  subtitle: Text('notifcation msg',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  leading: Icon(Icons.notifications),
                ),
                ListTile(
                  title: Text('back up'),
                  subtitle: Text('Network , auto downlaod',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  leading: Icon(Icons.storage),
                ),
                ListTile(
                  title: Text('Help'),
                  subtitle: Text('Help Center ,',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  leading: Icon(Icons.help_center),
                ),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
