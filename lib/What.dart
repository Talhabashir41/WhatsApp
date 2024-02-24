

import 'package:flutter/material.dart';
import 'package:whatapp/Call.dart';
import 'package:whatapp/Chats.dart';
import 'package:whatapp/Update.dart';

class Whatapp extends StatelessWidget {
  const Whatapp({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
              title: Text(
                "WhatsApp",
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
              ),
              backgroundColor: Colors.teal.shade700,
              actions: [
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.camera_alt_outlined,
                      color: Colors.white,
                    )),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.search,
                      color: Colors.white,
                    )),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.more_vert,
                      color: Colors.white,
                    ))
              ],
              bottom: TabBar(tabs: [
                Tab(
                  child: Icon(
                    Icons.camera_alt_outlined,
                    color: Colors.white,
                  ),
                ),
                Tab(
                  child: Text(
                    "chats",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                Tab(
                  child: Text(
                    "Update",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                Tab(
                  child: Text(
                    "call",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ]
              )
              ),
              body: TabBarView(children: [Scaffold(),Chats(),Update(),Call()],)

                )
  )
              
    ;
  }
}
