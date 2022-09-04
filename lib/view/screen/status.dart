import 'package:flutter/material.dart';
import 'package:flutter_advanced_avatar/flutter_advanced_avatar.dart';
import 'package:get/get.dart';
import 'package:whatclone/lists/liststatus.dart';
import 'package:whatclone/view/widget/popbutwidget.dart';
import 'package:whatclone/view/widget/storywidget.dart';

class status extends StatelessWidget {
  const status({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Column(
      children: [
        ListTile(
          title:
              Text("My Status", style: TextStyle(fontWeight: FontWeight.bold)),
          subtitle: Text('tap to add'),
          leading: Icon(
            Icons.person_pin,
            color: Colors.grey,
            size: 50,
          ),
          trailing: popbutwidget(
            firsttext: Text(
              "Add Status",
            ),
            sectext: Text("Delet status"),
            thtext: Text("show my status"),
            fourtext: Text("Hide"),
          ),
        ),
        Container(
          padding: EdgeInsets.all(5),
          height: 30,
          color: Color(0xffe8eae9),
          width: double.infinity,
          child: Text("Recent Updates",
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff075e54))),
        ),
        Container(
          height: height * 0.69,
          child: ListView.builder(
              itemCount: liststatus.length,
              itemBuilder: (context, i) {
                return ListTile(
                  onTap: () {
                    Get.to(StoryWidget(
                      url: liststatus[i].image,
                      username: liststatus[i].name,
                    ));
                  },
                  title: Text(liststatus[i].name,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      )),
                  subtitle: Text(liststatus[i].time),
                  leading: AdvancedAvatar(
                    foregroundDecoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.blue, width: 3)),
                    size: 55,
                    image: NetworkImage(liststatus[i].image),
                  ),
                );
              }),
        )
      ],
    );
  }
}
