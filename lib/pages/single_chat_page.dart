import "package:flutter/material.dart";
import "../widgets/action_btns_single_chat.dart";
import '../widgets/messages_area.dart';
import "../widgets/single_chat_bottom.dart";

class SingleChatPage extends StatefulWidget{
  @override
  SingleChatPageState createState()=> SingleChatPageState();
}

class SingleChatPageState extends State<SingleChatPage>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,
        actions: [ActionButtonsSingleChat()],
        title: Row(
          textDirection: TextDirection.ltr,
          children: const [
            CircleAvatar(
              backgroundImage: AssetImage("images/nobita.jpg"),
              radius: 15, 
            ), 

              Padding(
                padding: EdgeInsets.only(left: 8),
                child: Text("Nobita"),
              )
														
          ]
        )
      ),
      body: Container(
							color: Color.fromARGB(208, 255, 255, 255),
        alignment: Alignment.center,

        child: Column(          
          children: const [
										 MessagesArea(), 
											SingleChatBottom()
           ])
      )
    );
  }
}