import "package:flutter/material.dart";
import "action_buttons.dart";

class MyHome extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return DefaultTabController(

      length: 4, 

      child: Scaffold(
        appBar: AppBar(
          title: const Text("WhatsApp"),
          actions: [ActionButtons(), ],
          bottom:  TabBar(
            labelStyle: const TextStyle(fontSize: 20),
            labelPadding: EdgeInsets.symmetric(vertical: 10),
            
            
            tabs: [ 
              Container(
              child: const Icon(Icons.photo_camera),
              padding: EdgeInsets.zero,
              ),
              Text("Chats"),
              Text("Status"),
              Text("Calls"),
            ]
          ),
        ),
        
          body: Directionality(
            textDirection: TextDirection.ltr,
            child: ListView(
              children: []
            )
          )
      )
    );
  }
}