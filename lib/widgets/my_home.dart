import "package:flutter/material.dart";
import "../pages/call_page.dart";
import "../pages/status_page.dart";
import "action_buttons.dart";
import "../pages/camera.dart";
import "../pages/chats_page.dart";

class MyHome extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return DefaultTabController(

      length: 4, 
      initialIndex: 3,

      child: Scaffold(
        resizeToAvoidBottomInset: true,
        appBar: AppBar(
          title: const Text("WhatsApp"),
          actions: [ActionButtons()],

          bottom: const TabBar(
            labelStyle:  TextStyle(fontSize: 20),
            labelPadding: EdgeInsets.all(10),
            
            tabs:  [ 
              Icon(Icons.photo_camera),
              Text("Chats"),
              Text("Status"),
              Text("Calls"),
            ]
          ),
        ),
        
          body: TabBarView(
            children: [
              CameraPage(),
              Chats(),
              StatusPage(),
              CallPage(),
            ]
          )
          )
      );
  }
}