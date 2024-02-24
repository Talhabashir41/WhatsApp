import 'package:flutter/material.dart';

class Chatlist {
  String? title;
  String? subtitle;
  String? image;
  String? time;
  Chatlist(title, subtitle, image, time) {
    this.subtitle = subtitle;
    this.image = image;
    this.time = time;
    this.title = title;
  }
}

class Call extends StatelessWidget {
  Call({super.key});

  List<Chatlist> chatslist = [
    Chatlist('talha', '12:30pm', 'image/imageflutter.png', '12:30pm'),
    Chatlist('Faisal', 'kase hu', 'image/imageflutter.png', '08:45pm'),
    Chatlist('Ali', 'kase hu', 'image/imageflutter.png', '03:14pm'),
    Chatlist('Ahmed', 'kase hu', 'image/imageflutter.png', '02:33pm')
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: chatslist.length,
        itemBuilder: (context, index) {
          var title = chatslist[index].title;
          var subtitle = chatslist[index].subtitle;
          var time = chatslist[index].time;
          var image = chatslist[index].image;
          print(image as String);
          return ListTile(
            leading: CircleAvatar(
              child: Image.asset(image as String),
            ),
            title: Text(title as String),
            subtitle: Text(subtitle as String),
            trailing: Text(time as String),
          );
        },
      ),
    );
  }
}
