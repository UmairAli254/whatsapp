import "package:flutter/material.dart";
import "action_buttons.dart";
import "../pages/camera.dart";
import "../pages/chats_page.dart";

class MyHome extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return DefaultTabController(

      length: 4, 
      initialIndex: 1,

      child: Scaffold(
        resizeToAvoidBottomInset: true,
        appBar: AppBar(
          title: const Text("WhatsApp"),
          actions: [ActionButtons()],

          bottom: const TabBar(
            labelStyle:  TextStyle(fontSize: 20),
            labelPadding: EdgeInsets.only(bottom: 10),
            
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
              Text("Status"),
              Text("Calls"),
            ]
          )
          )
      );
  }
}