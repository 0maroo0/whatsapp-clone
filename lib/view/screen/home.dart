import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:whatclone/controll/controllerhome.dart';
import 'package:whatclone/view/screen/calls.dart';
import 'package:whatclone/view/screen/chats.dart';
import 'package:whatclone/view/screen/setting.dart';
import 'package:whatclone/view/screen/status.dart';
import 'package:whatclone/view/widget/popbutwidget.dart';

class Home extends GetView<homecontroller> {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(homecontroller());
    return DefaultTabController(
      length: 4,
      initialIndex: 1,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text(
            "WhatsApp",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          bottom: TabBar(tabs: [
            Tab(
                child: IconButton(
                    onPressed: () {
                      controller.opencamera();
                    },
                    icon: Icon(Icons.camera_alt_outlined))),
            Tab(
              child: Text("chats"),
            ),
            Tab(
              child: Text("Status"),
            ),
            Tab(
              child: Text("Calls"),
            ),
          ]),
          actions: [
            popbutwidget(
              firsttext: Text(
                "Setting",
              ),
              sectext: Text("Started MSG"),
              thtext: Text("WhatsApp Web"),
              fourtext: Text("Profile"),
            ),
            IconButton(onPressed: () {}, icon: Icon(Icons.search)),
            IconButton(
                onPressed: () {
                  Get.to(() => settingscreen());
                },
                icon: Icon(Icons.settings)),
          ],
        ),
        body: TabBarView(children: [
          Text(""),
          chats(),
          status(),
          callsscreen(),
        ]),
      ),
    );
  }
}
