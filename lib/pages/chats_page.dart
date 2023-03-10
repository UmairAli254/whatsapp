import "package:flutter/material.dart";
import '../model/chats_data.dart';
import 'single_chat_page.dart';

class Chats extends StatefulWidget{
  @override
  ChatsState createState() => ChatsState();
}

class ChatsState extends State<Chats>{
  @override
  Widget build(BuildContext context){
    return ListView.builder(
      itemCount: all_chats.length,
      itemBuilder: (context, i){ 

        return ListTile(

          leading: CircleAvatar(
            backgroundImage: AssetImage(all_chats[i].avatar),
            radius:25,
          ),

          title: Text(all_chats[i].name, 
          style: const TextStyle(fontSize: 20, 
          fontWeight: FontWeight.w500),
          ),

          subtitle: Padding(
            padding: const EdgeInsets.only(top: 3),
            child: Text(all_chats[i].msg,
             style: const TextStyle(fontSize: 17)
             ),
          ),

          trailing: Text(all_chats[i].time),

          onTap: (){
            Navigator.push(context, MaterialPageRoute(
              builder: (BuildContext context)=> SingleChatPage()
            ));

          }

        );

      }
    );
}
}